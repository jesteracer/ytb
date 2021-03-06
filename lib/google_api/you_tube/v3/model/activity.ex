# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Model.Activity do
  @moduledoc """
  An activity resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"contentDetails",
    :"etag",
    :"id",
    :"kind",
    :"snippet"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Activity do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"contentDetails", :struct, GoogleApi.YouTube.V3.Model.ActivityContentDetails, options)
    |> deserialize(:"snippet", :struct, GoogleApi.YouTube.V3.Model.ActivitySnippet, options)
  end
end

