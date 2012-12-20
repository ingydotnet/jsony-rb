require 'pegex/tree'

class JSONY::Receiver < Pegex::Tree
  def got_top_seq_entry got
    got[0][0]
  end

  def got_top_map got
    got_map [got]
  end

  def got_seq got
    got[0]
  end

  def got_map got
    Hash[got[0]]
  end

  def got_string got
    got.to_s
  end

  def got_bare got
    case got
    when 'true' # XXX is it a bug in jsony-pm that it's unanchored
      true
    when 'false'
      false
    when 'null'
      'fake-nil'
      # TODO golf this \ if possible
    when \
      /^(
        -?
        (?: 0 | [1-9] [0-9]* )
        (?: \. [0-9]* )?
        (?: [eE] [\-\+]? [0-9]+ )?
      )$/x
      got.to_i
    else
      got.to_s
    end
  end
end
