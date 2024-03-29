module GamesHelper
  def point(path, point)
    if point.start
      image_tag("start.png", height: '32', width: '32', class: "p_#{point.x}_#{point.y}" ).html_safe
    elsif point.goal
      image_tag("goal.png", height: '32', width: '32', class: "p_#{point.x}_#{point.y}" ).html_safe
    elsif point.busy
      image_tag("busy.png", height: '32', width: '32', class: "p_#{point.x}_#{point.y}" ).html_safe
    elsif is_path? path, point
      image_tag("path.png", height: '32', width: '32', class: "p_#{point.x}_#{point.y}").html_safe
    else
      image_tag("point.gif", height: '32', width: '32', class: "p_#{point.x}_#{point.y}").html_safe
    end
  end

  private

    def is_path? path, point
      true if path && path.include?([point.x, point.y])
    end
end
