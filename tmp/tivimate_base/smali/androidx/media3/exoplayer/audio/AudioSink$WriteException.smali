.class public final Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lʽⁱ/ﹳᐧ;

.field public final ʾˋ:I

.field public final ᴵˊ:Z


# direct methods
.method public constructor <init>(ILʽⁱ/ﹳᐧ;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    invoke-static {p1, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʾˋ:I

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    return-void
.end method
