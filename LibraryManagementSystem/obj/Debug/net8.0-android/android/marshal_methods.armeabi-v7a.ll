; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [328 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [650 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 28873261, ; 3: Npgsql.dll => 0x1b8922d => 205
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 248
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 282
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 290
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 299
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 323
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 204
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 307
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 266
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 266
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 286
	i32 136584136, ; 22: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 322
	i32 140062828, ; 23: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 315
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 222
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 268
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 220
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 242
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 39: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 175
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 225
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 244
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 241
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 320
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 211
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 298
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 243
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 324
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 60: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 318
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 226
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 239
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 241
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 254
	i32 489220957, ; 71: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 296
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 197
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 75: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 286
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 77: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 317
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 193
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 279
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 277
	i32 571435654, ; 85: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 190
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 231
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 309
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 237
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 273
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 218
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 288
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 283
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 105: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 287
	i32 722857257, ; 106: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 107: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 108: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 109: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 208
	i32 759454413, ; 110: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 111: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 112: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 113: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 315
	i32 789151979, ; 114: Microsoft.Extensions.Options => 0x2f0980eb => 196
	i32 790371945, ; 115: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 232
	i32 804008546, ; 116: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 179
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 246
	i32 823281589, ; 119: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 120: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 121: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 122: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 123: Xamarin.AndroidX.Print => 0x3246f6cd => 259
	i32 869139383, ; 124: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 300
	i32 873119928, ; 125: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 126: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 127: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 128: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 314
	i32 904024072, ; 129: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 130: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 131: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 311
	i32 928116545, ; 132: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 282
	i32 952186615, ; 133: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 134: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 287
	i32 961460050, ; 135: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 304
	i32 966729478, ; 136: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 280
	i32 967690846, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 243
	i32 975236339, ; 138: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 139: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 140: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 141: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 142: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 313
	i32 992768348, ; 143: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 144: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 145: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 192
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 263
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1031528504, ; 150: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 281
	i32 1035644815, ; 151: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 216
	i32 1036536393, ; 152: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 153: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 294
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 250
	i32 1067306892, ; 156: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 157: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 158: Xamarin.Kotlin.StdLib => 0x409e66d8 => 284
	i32 1098259244, ; 159: System => 0x41761b2c => 164
	i32 1106973742, ; 160: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 184
	i32 1108272742, ; 161: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 316
	i32 1117529484, ; 162: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 310
	i32 1118262833, ; 163: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 306
	i32 1121599056, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 249
	i32 1127624469, ; 165: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 195
	i32 1149092582, ; 166: Xamarin.AndroidX.Window => 0x447dc2e6 => 276
	i32 1168523401, ; 167: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 312
	i32 1170634674, ; 168: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 169: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 188
	i32 1175144683, ; 170: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 272
	i32 1178241025, ; 171: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 257
	i32 1204270330, ; 172: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 218
	i32 1208641965, ; 173: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 174: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 175: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 277
	i32 1253011324, ; 176: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 177: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 292
	i32 1264511973, ; 178: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 267
	i32 1267360935, ; 179: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 271
	i32 1273260888, ; 180: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 223
	i32 1275534314, ; 181: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 288
	i32 1278448581, ; 182: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 215
	i32 1293217323, ; 183: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 234
	i32 1308624726, ; 184: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 301
	i32 1309188875, ; 185: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 186: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 276
	i32 1324164729, ; 187: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 188: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 189: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 321
	i32 1364015309, ; 190: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 191: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 322
	i32 1376866003, ; 192: Xamarin.AndroidX.SavedState => 0x52114ed3 => 263
	i32 1379779777, ; 193: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 194: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 195: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 227
	i32 1408764838, ; 196: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 197: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 198: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 199: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 290
	i32 1434145427, ; 200: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 201: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 280
	i32 1439761251, ; 202: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 203: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 204: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 205: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 189
	i32 1457743152, ; 206: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 207: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 208: es\Microsoft.Maui.Controls.resources => 0x57152abe => 296
	i32 1461234159, ; 209: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 210: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 211: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 212: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 217
	i32 1470490898, ; 213: Microsoft.Extensions.Primitives => 0x57a5e912 => 197
	i32 1479771757, ; 214: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 215: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 216: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 217: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 264
	i32 1521091094, ; 218: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 192
	i32 1526286932, ; 219: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 320
	i32 1536373174, ; 220: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 221: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 222: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 223: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 179
	i32 1550322496, ; 224: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 225: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 226: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 227: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 228: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 229: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 233
	i32 1592978981, ; 230: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 231: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 281
	i32 1601112923, ; 232: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 233: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 234: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 235: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 253
	i32 1622358360, ; 236: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 237: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 275
	i32 1632842087, ; 238: Microsoft.Extensions.Configuration.Json => 0x61533167 => 185
	i32 1635184631, ; 239: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 237
	i32 1636350590, ; 240: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 230
	i32 1639515021, ; 241: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 242: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 243: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 244: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 178
	i32 1657153582, ; 245: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 246: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 269
	i32 1658251792, ; 247: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 278
	i32 1670060433, ; 248: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 225
	i32 1675553242, ; 249: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 250: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 251: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 252: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 253: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 254: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 255: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 285
	i32 1701541528, ; 256: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 246
	i32 1726116996, ; 258: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 259: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 260: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 221
	i32 1743415430, ; 261: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 291
	i32 1744735666, ; 262: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 263: System.IO.Pipelines.dll => 0x68139a0d => 206
	i32 1746316138, ; 264: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 265: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 266: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 267: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 177
	i32 1763938596, ; 268: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 269: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 270: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 268
	i32 1770582343, ; 271: Microsoft.Extensions.Logging.dll => 0x6988f147 => 193
	i32 1776026572, ; 272: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 273: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 274: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 275: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 307
	i32 1788241197, ; 276: Xamarin.AndroidX.Fragment => 0x6a96652d => 239
	i32 1793755602, ; 277: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 299
	i32 1808609942, ; 278: Xamarin.AndroidX.Loader => 0x6bcd3296 => 253
	i32 1813058853, ; 279: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 284
	i32 1813201214, ; 280: Xamarin.Google.Android.Material => 0x6c13413e => 278
	i32 1818569960, ; 281: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 258
	i32 1818787751, ; 282: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 283: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 284: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 285: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 194
	i32 1847515442, ; 286: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 208
	i32 1853025655, ; 287: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 316
	i32 1858542181, ; 288: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 289: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 290: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 298
	i32 1879696579, ; 291: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 292: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 219
	i32 1888955245, ; 293: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 294: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 295: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 292
	i32 1898237753, ; 296: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 297: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 298: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 299: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 300: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 303
	i32 1956758971, ; 301: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 302: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 265
	i32 1968388702, ; 303: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 304: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 285
	i32 1985761444, ; 305: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 210
	i32 2003115576, ; 306: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 295
	i32 2011961780, ; 307: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 250
	i32 2031763787, ; 309: Xamarin.Android.Glide => 0x791a414b => 207
	i32 2045470958, ; 310: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 311: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 183
	i32 2055257422, ; 312: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 245
	i32 2060060697, ; 313: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 314: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 294
	i32 2070888862, ; 315: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 316: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 191
	i32 2079903147, ; 317: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 318: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 319: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 320: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 321: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 322: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 323: Microsoft.Maui => 0x80bd55ad => 202
	i32 2169148018, ; 324: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 302
	i32 2181898931, ; 325: Microsoft.Extensions.Options.dll => 0x820d22b3 => 196
	i32 2192057212, ; 326: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 194
	i32 2193016926, ; 327: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 328: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 289
	i32 2201231467, ; 329: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 330: it\Microsoft.Maui.Controls.resources => 0x839595db => 304
	i32 2217644978, ; 331: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 272
	i32 2222056684, ; 332: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 333: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 254
	i32 2252106437, ; 334: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 335: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 336: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 337: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 338: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 209
	i32 2279755925, ; 339: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 261
	i32 2293034957, ; 340: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2294913272, ; 341: Npgsql => 0x88c998f8 => 205
	i32 2295906218, ; 342: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 343: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 344: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 308
	i32 2305521784, ; 345: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 346: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 213
	i32 2320631194, ; 347: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 348: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 349: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 350: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 351: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 302
	i32 2368005991, ; 352: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 353: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 354: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 355: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2386178088, ; 356: LibraryManagementSystem => 0x8e3a3028 => 0
	i32 2395872292, ; 357: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 303
	i32 2401565422, ; 358: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 359: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 236
	i32 2411328690, ; 360: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 175
	i32 2421380589, ; 361: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 362: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 223
	i32 2427813419, ; 363: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 300
	i32 2435356389, ; 364: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 365: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 366: Microsoft.JSInterop.dll => 0x919672ca => 198
	i32 2451165322, ; 367: LibraryManagementSystem.dll => 0x9219d08a => 0
	i32 2454642406, ; 368: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 369: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 370: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 371: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 226
	i32 2471841756, ; 372: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 373: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 374: Microsoft.Maui.Controls => 0x93dba8a1 => 200
	i32 2483903535, ; 375: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 376: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 377: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 378: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 379: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 306
	i32 2505896520, ; 380: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 248
	i32 2522472828, ; 381: Xamarin.Android.Glide.dll => 0x9659e17c => 207
	i32 2537015816, ; 382: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 174
	i32 2538310050, ; 383: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 384: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 301
	i32 2562349572, ; 385: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 386: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 387: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 305
	i32 2581783588, ; 388: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 249
	i32 2581819634, ; 389: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 271
	i32 2585220780, ; 390: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 391: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 392: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 176
	i32 2589602615, ; 393: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 394: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 188
	i32 2593496499, ; 395: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 310
	i32 2605712449, ; 396: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 289
	i32 2615233544, ; 397: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 240
	i32 2616218305, ; 398: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 195
	i32 2617129537, ; 399: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 400: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 401: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 230
	i32 2624644809, ; 402: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 235
	i32 2626831493, ; 403: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 305
	i32 2627185994, ; 404: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 405: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 406: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 244
	i32 2663391936, ; 407: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 209
	i32 2663698177, ; 408: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 409: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 410: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 411: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 412: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 413: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 178
	i32 2693849962, ; 414: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 415: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 269
	i32 2715334215, ; 416: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 417: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 418: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 419: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 420: Xamarin.AndroidX.Activity => 0xa2e0939b => 211
	i32 2735172069, ; 421: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 422: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 174
	i32 2737747696, ; 423: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 217
	i32 2740698338, ; 424: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 291
	i32 2740948882, ; 425: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 426: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 427: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 311
	i32 2758225723, ; 428: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 201
	i32 2764765095, ; 429: Microsoft.Maui.dll => 0xa4caf7a7 => 202
	i32 2765824710, ; 430: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 431: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 283
	i32 2778768386, ; 432: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 274
	i32 2779977773, ; 433: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 262
	i32 2785988530, ; 434: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 317
	i32 2788224221, ; 435: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 240
	i32 2801831435, ; 436: Microsoft.Maui.Graphics => 0xa7008e0b => 204
	i32 2803228030, ; 437: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 438: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 227
	i32 2819470561, ; 439: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 440: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 441: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 262
	i32 2824502124, ; 442: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 443: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 180
	i32 2838993487, ; 444: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 251
	i32 2849599387, ; 445: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 446: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 274
	i32 2855708567, ; 447: Xamarin.AndroidX.Transition => 0xaa36a797 => 270
	i32 2861098320, ; 448: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 449: Microsoft.Maui.Essentials => 0xaa8a4878 => 203
	i32 2870099610, ; 450: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 212
	i32 2875164099, ; 451: Jsr305Binding.dll => 0xab5f85c3 => 279
	i32 2875220617, ; 452: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 453: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 238
	i32 2887636118, ; 454: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 455: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 177
	i32 2899753641, ; 456: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 457: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 458: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 459: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 460: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 461: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 191
	i32 2916838712, ; 462: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 275
	i32 2919462931, ; 463: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 464: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 214
	i32 2936416060, ; 465: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 466: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 467: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 468: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 469: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 470: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 471: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 234
	i32 2987532451, ; 472: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 265
	i32 2996846495, ; 473: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 247
	i32 3016983068, ; 474: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 267
	i32 3023353419, ; 475: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 476: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 242
	i32 3038032645, ; 477: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 324
	i32 3053864966, ; 478: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 297
	i32 3056245963, ; 479: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 264
	i32 3057625584, ; 480: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 255
	i32 3059408633, ; 481: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 482: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 483: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 484: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 485: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 486: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 487: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 488: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 489: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 490: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 491: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 492: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 493: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 494: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 495: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 256
	i32 3192346100, ; 496: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 497: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 498: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 499: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 500: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 233
	i32 3220365878, ; 501: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 502: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 503: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 504: Xamarin.AndroidX.CardView => 0xc235e84d => 221
	i32 3265493905, ; 505: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 506: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 507: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 508: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 509: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 510: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 511: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 512: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 513: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 297
	i32 3316684772, ; 514: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 515: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 231
	i32 3317144872, ; 516: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 517: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 219
	i32 3345895724, ; 518: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 260
	i32 3346324047, ; 519: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 257
	i32 3357674450, ; 520: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 314
	i32 3358260929, ; 521: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 522: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 212
	i32 3362522851, ; 523: Xamarin.AndroidX.Core => 0xc86c06e3 => 228
	i32 3366347497, ; 524: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 525: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 261
	i32 3381016424, ; 526: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 293
	i32 3395150330, ; 527: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 528: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 529: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 232
	i32 3406629867, ; 530: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 189
	i32 3421170118, ; 531: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 183
	i32 3428513518, ; 532: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 533: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 534: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 535: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 235
	i32 3445260447, ; 536: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 537: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 199
	i32 3458724246, ; 538: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 312
	i32 3464190856, ; 539: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 176
	i32 3471940407, ; 540: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 541: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 542: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 313
	i32 3485117614, ; 543: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 544: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 545: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 224
	i32 3500000672, ; 546: Microsoft.JSInterop => 0xd09dc5a0 => 198
	i32 3509114376, ; 547: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 548: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 549: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 550: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 551: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 552: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 553: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 321
	i32 3592228221, ; 554: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 323
	i32 3597029428, ; 555: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 210
	i32 3598340787, ; 556: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 557: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 558: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 559: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 259
	i32 3633644679, ; 560: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 214
	i32 3638274909, ; 561: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 562: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 245
	i32 3643446276, ; 563: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 318
	i32 3643854240, ; 564: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 256
	i32 3645089577, ; 565: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 566: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 567: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 568: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 569: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 220
	i32 3684561358, ; 570: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 224
	i32 3700866549, ; 571: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 572: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 229
	i32 3716563718, ; 573: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 574: Xamarin.AndroidX.Annotation => 0xdda814c6 => 213
	i32 3722202641, ; 575: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 185
	i32 3724971120, ; 576: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 255
	i32 3732100267, ; 577: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 578: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 180
	i32 3737834244, ; 579: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 580: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 581: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 582: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 293
	i32 3758424670, ; 583: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 184
	i32 3786282454, ; 584: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 222
	i32 3792276235, ; 585: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 586: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 199
	i32 3802395368, ; 587: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 588: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 589: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 590: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 591: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 592: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 593: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 594: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 595: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 596: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 597: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 598: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 270
	i32 3888767677, ; 599: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 260
	i32 3896106733, ; 600: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 601: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 228
	i32 3901907137, ; 602: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 603: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 309
	i32 3920810846, ; 604: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 605: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 273
	i32 3928044579, ; 606: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 607: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 608: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 258
	i32 3945713374, ; 609: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 610: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 611: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 216
	i32 3959773229, ; 612: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 247
	i32 4003436829, ; 613: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 614: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 215
	i32 4023392905, ; 615: System.IO.Pipelines => 0xefd01a89 => 206
	i32 4025784931, ; 616: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 617: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 201
	i32 4054681211, ; 618: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 619: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 620: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 621: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 295
	i32 4094352644, ; 622: Microsoft.Maui.Essentials.dll => 0xf40add04 => 203
	i32 4099507663, ; 623: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 624: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 625: Xamarin.AndroidX.Emoji2 => 0xf479582c => 236
	i32 4103439459, ; 626: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 319
	i32 4126470640, ; 627: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 628: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 629: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 630: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 631: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 319
	i32 4151237749, ; 632: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 633: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 634: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 635: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 636: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 637: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 252
	i32 4185676441, ; 638: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 639: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 640: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 641: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 308
	i32 4256097574, ; 642: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 229
	i32 4258378803, ; 643: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 251
	i32 4260525087, ; 644: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 645: Microsoft.Maui.Controls.dll => 0xfea12dee => 200
	i32 4274976490, ; 646: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 647: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 252
	i32 4294648842, ; 648: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 190
	i32 4294763496 ; 649: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 238
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [650 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 205, ; 3
	i32 248, ; 4
	i32 282, ; 5
	i32 48, ; 6
	i32 290, ; 7
	i32 80, ; 8
	i32 299, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 323, ; 12
	i32 124, ; 13
	i32 204, ; 14
	i32 102, ; 15
	i32 307, ; 16
	i32 266, ; 17
	i32 107, ; 18
	i32 266, ; 19
	i32 139, ; 20
	i32 286, ; 21
	i32 322, ; 22
	i32 315, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 222, ; 27
	i32 132, ; 28
	i32 268, ; 29
	i32 151, ; 30
	i32 18, ; 31
	i32 220, ; 32
	i32 26, ; 33
	i32 242, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 175, ; 39
	i32 225, ; 40
	i32 147, ; 41
	i32 244, ; 42
	i32 241, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 320, ; 46
	i32 211, ; 47
	i32 83, ; 48
	i32 298, ; 49
	i32 243, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 324, ; 58
	i32 165, ; 59
	i32 318, ; 60
	i32 226, ; 61
	i32 12, ; 62
	i32 239, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 241, ; 69
	i32 254, ; 70
	i32 296, ; 71
	i32 84, ; 72
	i32 197, ; 73
	i32 150, ; 74
	i32 286, ; 75
	i32 60, ; 76
	i32 317, ; 77
	i32 193, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 279, ; 83
	i32 277, ; 84
	i32 190, ; 85
	i32 120, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 231, ; 90
	i32 309, ; 91
	i32 237, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 273, ; 95
	i32 218, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 155, ; 99
	i32 288, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 283, ; 103
	i32 45, ; 104
	i32 287, ; 105
	i32 109, ; 106
	i32 129, ; 107
	i32 25, ; 108
	i32 208, ; 109
	i32 72, ; 110
	i32 55, ; 111
	i32 46, ; 112
	i32 315, ; 113
	i32 196, ; 114
	i32 232, ; 115
	i32 179, ; 116
	i32 22, ; 117
	i32 246, ; 118
	i32 86, ; 119
	i32 43, ; 120
	i32 160, ; 121
	i32 71, ; 122
	i32 259, ; 123
	i32 300, ; 124
	i32 3, ; 125
	i32 42, ; 126
	i32 63, ; 127
	i32 314, ; 128
	i32 16, ; 129
	i32 53, ; 130
	i32 311, ; 131
	i32 282, ; 132
	i32 105, ; 133
	i32 287, ; 134
	i32 304, ; 135
	i32 280, ; 136
	i32 243, ; 137
	i32 34, ; 138
	i32 158, ; 139
	i32 85, ; 140
	i32 32, ; 141
	i32 313, ; 142
	i32 12, ; 143
	i32 51, ; 144
	i32 192, ; 145
	i32 56, ; 146
	i32 263, ; 147
	i32 36, ; 148
	i32 187, ; 149
	i32 281, ; 150
	i32 216, ; 151
	i32 35, ; 152
	i32 294, ; 153
	i32 58, ; 154
	i32 250, ; 155
	i32 173, ; 156
	i32 17, ; 157
	i32 284, ; 158
	i32 164, ; 159
	i32 184, ; 160
	i32 316, ; 161
	i32 310, ; 162
	i32 306, ; 163
	i32 249, ; 164
	i32 195, ; 165
	i32 276, ; 166
	i32 312, ; 167
	i32 153, ; 168
	i32 188, ; 169
	i32 272, ; 170
	i32 257, ; 171
	i32 218, ; 172
	i32 29, ; 173
	i32 52, ; 174
	i32 277, ; 175
	i32 5, ; 176
	i32 292, ; 177
	i32 267, ; 178
	i32 271, ; 179
	i32 223, ; 180
	i32 288, ; 181
	i32 215, ; 182
	i32 234, ; 183
	i32 301, ; 184
	i32 85, ; 185
	i32 276, ; 186
	i32 61, ; 187
	i32 112, ; 188
	i32 321, ; 189
	i32 57, ; 190
	i32 322, ; 191
	i32 263, ; 192
	i32 99, ; 193
	i32 19, ; 194
	i32 227, ; 195
	i32 111, ; 196
	i32 101, ; 197
	i32 102, ; 198
	i32 290, ; 199
	i32 104, ; 200
	i32 280, ; 201
	i32 71, ; 202
	i32 38, ; 203
	i32 32, ; 204
	i32 189, ; 205
	i32 103, ; 206
	i32 73, ; 207
	i32 296, ; 208
	i32 9, ; 209
	i32 123, ; 210
	i32 46, ; 211
	i32 217, ; 212
	i32 197, ; 213
	i32 9, ; 214
	i32 43, ; 215
	i32 4, ; 216
	i32 264, ; 217
	i32 192, ; 218
	i32 320, ; 219
	i32 31, ; 220
	i32 138, ; 221
	i32 92, ; 222
	i32 179, ; 223
	i32 93, ; 224
	i32 49, ; 225
	i32 141, ; 226
	i32 112, ; 227
	i32 140, ; 228
	i32 233, ; 229
	i32 115, ; 230
	i32 281, ; 231
	i32 157, ; 232
	i32 76, ; 233
	i32 79, ; 234
	i32 253, ; 235
	i32 37, ; 236
	i32 275, ; 237
	i32 185, ; 238
	i32 237, ; 239
	i32 230, ; 240
	i32 64, ; 241
	i32 138, ; 242
	i32 15, ; 243
	i32 178, ; 244
	i32 116, ; 245
	i32 269, ; 246
	i32 278, ; 247
	i32 225, ; 248
	i32 48, ; 249
	i32 70, ; 250
	i32 80, ; 251
	i32 126, ; 252
	i32 94, ; 253
	i32 121, ; 254
	i32 285, ; 255
	i32 26, ; 256
	i32 246, ; 257
	i32 97, ; 258
	i32 28, ; 259
	i32 221, ; 260
	i32 291, ; 261
	i32 149, ; 262
	i32 206, ; 263
	i32 169, ; 264
	i32 4, ; 265
	i32 98, ; 266
	i32 177, ; 267
	i32 33, ; 268
	i32 93, ; 269
	i32 268, ; 270
	i32 193, ; 271
	i32 21, ; 272
	i32 41, ; 273
	i32 170, ; 274
	i32 307, ; 275
	i32 239, ; 276
	i32 299, ; 277
	i32 253, ; 278
	i32 284, ; 279
	i32 278, ; 280
	i32 258, ; 281
	i32 2, ; 282
	i32 134, ; 283
	i32 111, ; 284
	i32 194, ; 285
	i32 208, ; 286
	i32 316, ; 287
	i32 58, ; 288
	i32 95, ; 289
	i32 298, ; 290
	i32 39, ; 291
	i32 219, ; 292
	i32 25, ; 293
	i32 94, ; 294
	i32 292, ; 295
	i32 89, ; 296
	i32 99, ; 297
	i32 10, ; 298
	i32 87, ; 299
	i32 303, ; 300
	i32 100, ; 301
	i32 265, ; 302
	i32 181, ; 303
	i32 285, ; 304
	i32 210, ; 305
	i32 295, ; 306
	i32 7, ; 307
	i32 250, ; 308
	i32 207, ; 309
	i32 88, ; 310
	i32 183, ; 311
	i32 245, ; 312
	i32 154, ; 313
	i32 294, ; 314
	i32 33, ; 315
	i32 191, ; 316
	i32 116, ; 317
	i32 82, ; 318
	i32 20, ; 319
	i32 11, ; 320
	i32 162, ; 321
	i32 3, ; 322
	i32 202, ; 323
	i32 302, ; 324
	i32 196, ; 325
	i32 194, ; 326
	i32 84, ; 327
	i32 289, ; 328
	i32 64, ; 329
	i32 304, ; 330
	i32 272, ; 331
	i32 143, ; 332
	i32 254, ; 333
	i32 157, ; 334
	i32 41, ; 335
	i32 117, ; 336
	i32 182, ; 337
	i32 209, ; 338
	i32 261, ; 339
	i32 131, ; 340
	i32 205, ; 341
	i32 75, ; 342
	i32 66, ; 343
	i32 308, ; 344
	i32 172, ; 345
	i32 213, ; 346
	i32 143, ; 347
	i32 106, ; 348
	i32 151, ; 349
	i32 70, ; 350
	i32 302, ; 351
	i32 156, ; 352
	i32 181, ; 353
	i32 121, ; 354
	i32 127, ; 355
	i32 0, ; 356
	i32 303, ; 357
	i32 152, ; 358
	i32 236, ; 359
	i32 175, ; 360
	i32 141, ; 361
	i32 223, ; 362
	i32 300, ; 363
	i32 20, ; 364
	i32 14, ; 365
	i32 198, ; 366
	i32 0, ; 367
	i32 135, ; 368
	i32 75, ; 369
	i32 59, ; 370
	i32 226, ; 371
	i32 167, ; 372
	i32 168, ; 373
	i32 200, ; 374
	i32 15, ; 375
	i32 74, ; 376
	i32 6, ; 377
	i32 23, ; 378
	i32 306, ; 379
	i32 248, ; 380
	i32 207, ; 381
	i32 174, ; 382
	i32 91, ; 383
	i32 301, ; 384
	i32 1, ; 385
	i32 136, ; 386
	i32 305, ; 387
	i32 249, ; 388
	i32 271, ; 389
	i32 134, ; 390
	i32 69, ; 391
	i32 176, ; 392
	i32 146, ; 393
	i32 188, ; 394
	i32 310, ; 395
	i32 289, ; 396
	i32 240, ; 397
	i32 195, ; 398
	i32 88, ; 399
	i32 96, ; 400
	i32 230, ; 401
	i32 235, ; 402
	i32 305, ; 403
	i32 31, ; 404
	i32 45, ; 405
	i32 244, ; 406
	i32 209, ; 407
	i32 109, ; 408
	i32 158, ; 409
	i32 35, ; 410
	i32 22, ; 411
	i32 114, ; 412
	i32 178, ; 413
	i32 57, ; 414
	i32 269, ; 415
	i32 144, ; 416
	i32 118, ; 417
	i32 120, ; 418
	i32 110, ; 419
	i32 211, ; 420
	i32 139, ; 421
	i32 174, ; 422
	i32 217, ; 423
	i32 291, ; 424
	i32 54, ; 425
	i32 105, ; 426
	i32 311, ; 427
	i32 201, ; 428
	i32 202, ; 429
	i32 133, ; 430
	i32 283, ; 431
	i32 274, ; 432
	i32 262, ; 433
	i32 317, ; 434
	i32 240, ; 435
	i32 204, ; 436
	i32 159, ; 437
	i32 227, ; 438
	i32 163, ; 439
	i32 132, ; 440
	i32 262, ; 441
	i32 161, ; 442
	i32 180, ; 443
	i32 251, ; 444
	i32 140, ; 445
	i32 274, ; 446
	i32 270, ; 447
	i32 169, ; 448
	i32 203, ; 449
	i32 212, ; 450
	i32 279, ; 451
	i32 40, ; 452
	i32 238, ; 453
	i32 81, ; 454
	i32 177, ; 455
	i32 56, ; 456
	i32 37, ; 457
	i32 97, ; 458
	i32 166, ; 459
	i32 172, ; 460
	i32 191, ; 461
	i32 275, ; 462
	i32 82, ; 463
	i32 214, ; 464
	i32 98, ; 465
	i32 30, ; 466
	i32 159, ; 467
	i32 18, ; 468
	i32 127, ; 469
	i32 119, ; 470
	i32 234, ; 471
	i32 265, ; 472
	i32 247, ; 473
	i32 267, ; 474
	i32 165, ; 475
	i32 242, ; 476
	i32 324, ; 477
	i32 297, ; 478
	i32 264, ; 479
	i32 255, ; 480
	i32 170, ; 481
	i32 16, ; 482
	i32 144, ; 483
	i32 125, ; 484
	i32 118, ; 485
	i32 38, ; 486
	i32 115, ; 487
	i32 47, ; 488
	i32 142, ; 489
	i32 117, ; 490
	i32 34, ; 491
	i32 173, ; 492
	i32 95, ; 493
	i32 53, ; 494
	i32 256, ; 495
	i32 129, ; 496
	i32 153, ; 497
	i32 24, ; 498
	i32 161, ; 499
	i32 233, ; 500
	i32 148, ; 501
	i32 104, ; 502
	i32 89, ; 503
	i32 221, ; 504
	i32 60, ; 505
	i32 142, ; 506
	i32 100, ; 507
	i32 5, ; 508
	i32 13, ; 509
	i32 122, ; 510
	i32 135, ; 511
	i32 28, ; 512
	i32 297, ; 513
	i32 72, ; 514
	i32 231, ; 515
	i32 24, ; 516
	i32 219, ; 517
	i32 260, ; 518
	i32 257, ; 519
	i32 314, ; 520
	i32 137, ; 521
	i32 212, ; 522
	i32 228, ; 523
	i32 168, ; 524
	i32 261, ; 525
	i32 293, ; 526
	i32 101, ; 527
	i32 123, ; 528
	i32 232, ; 529
	i32 189, ; 530
	i32 183, ; 531
	i32 186, ; 532
	i32 163, ; 533
	i32 167, ; 534
	i32 235, ; 535
	i32 39, ; 536
	i32 199, ; 537
	i32 312, ; 538
	i32 176, ; 539
	i32 17, ; 540
	i32 171, ; 541
	i32 313, ; 542
	i32 137, ; 543
	i32 150, ; 544
	i32 224, ; 545
	i32 198, ; 546
	i32 155, ; 547
	i32 130, ; 548
	i32 19, ; 549
	i32 65, ; 550
	i32 147, ; 551
	i32 47, ; 552
	i32 321, ; 553
	i32 323, ; 554
	i32 210, ; 555
	i32 79, ; 556
	i32 61, ; 557
	i32 106, ; 558
	i32 259, ; 559
	i32 214, ; 560
	i32 49, ; 561
	i32 245, ; 562
	i32 318, ; 563
	i32 256, ; 564
	i32 14, ; 565
	i32 182, ; 566
	i32 68, ; 567
	i32 171, ; 568
	i32 220, ; 569
	i32 224, ; 570
	i32 78, ; 571
	i32 229, ; 572
	i32 108, ; 573
	i32 213, ; 574
	i32 185, ; 575
	i32 255, ; 576
	i32 67, ; 577
	i32 180, ; 578
	i32 63, ; 579
	i32 27, ; 580
	i32 160, ; 581
	i32 293, ; 582
	i32 184, ; 583
	i32 222, ; 584
	i32 10, ; 585
	i32 199, ; 586
	i32 11, ; 587
	i32 78, ; 588
	i32 126, ; 589
	i32 83, ; 590
	i32 187, ; 591
	i32 66, ; 592
	i32 107, ; 593
	i32 65, ; 594
	i32 128, ; 595
	i32 122, ; 596
	i32 77, ; 597
	i32 270, ; 598
	i32 260, ; 599
	i32 8, ; 600
	i32 228, ; 601
	i32 2, ; 602
	i32 309, ; 603
	i32 44, ; 604
	i32 273, ; 605
	i32 156, ; 606
	i32 128, ; 607
	i32 258, ; 608
	i32 23, ; 609
	i32 133, ; 610
	i32 216, ; 611
	i32 247, ; 612
	i32 29, ; 613
	i32 215, ; 614
	i32 206, ; 615
	i32 62, ; 616
	i32 201, ; 617
	i32 90, ; 618
	i32 87, ; 619
	i32 148, ; 620
	i32 295, ; 621
	i32 203, ; 622
	i32 36, ; 623
	i32 86, ; 624
	i32 236, ; 625
	i32 319, ; 626
	i32 186, ; 627
	i32 50, ; 628
	i32 6, ; 629
	i32 90, ; 630
	i32 319, ; 631
	i32 21, ; 632
	i32 162, ; 633
	i32 96, ; 634
	i32 50, ; 635
	i32 113, ; 636
	i32 252, ; 637
	i32 130, ; 638
	i32 76, ; 639
	i32 27, ; 640
	i32 308, ; 641
	i32 229, ; 642
	i32 251, ; 643
	i32 7, ; 644
	i32 200, ; 645
	i32 110, ; 646
	i32 252, ; 647
	i32 190, ; 648
	i32 238 ; 649
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
