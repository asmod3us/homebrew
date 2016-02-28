class JavaCommentPreprocessor < Formula
  desc "Multi-pass preprocessor for Java"
  homepage "https://github.com/raydac/java-comment-preprocessor"
  url "https://github.com/raydac/java-comment-preprocessor/releases/download/6.0.1/jcp-6.0.1-bundle.jar"
  sha256 "9e6ad7559e1e84350060778c462599f296af10276c8734463d7901b86617448a"

  depends_on :java => "1.7+"

  def install
    safe_system "unzip", "jcp-#{version}-bundle.jar"
    libexec.install "jcp-#{version}.jar"
    bin.write_jar_script libexec/"jcp-#{version}.jar", "jcp"
  end

  test do
    system "false"
  end
end
