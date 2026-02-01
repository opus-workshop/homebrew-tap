class Bn < Formula
  desc "A hierarchical task engine where every task is a YAML file"
  homepage "https://github.com/opus-workshop/beans"
  url "https://github.com/opus-workshop/beans.git", tag: "v0.1.0"
  license :cannot_represent

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/bn", "--help"
  end
end
