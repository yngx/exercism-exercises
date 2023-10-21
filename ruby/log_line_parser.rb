class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    _, message = parse_line
    message
  end

  def log_level
    log, _ = parse_line
    log
  end

  def reformat
    log, message = parse_line
    "#{message} (#{log})"
  end

  private

  def parse_line
    level, *message = @line.split(":")
    message = message.join(":").strip

    level = level.tr('[]','').downcase
    [level, message]
  end
end
