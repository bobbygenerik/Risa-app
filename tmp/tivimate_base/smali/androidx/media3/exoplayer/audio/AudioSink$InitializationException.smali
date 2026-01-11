.class public final Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lʽⁱ/ﹳᐧ;

.field public final ʾˋ:I

.field public final ᴵˊ:Z


# direct methods
.method public constructor <init>(IIIIILʽⁱ/ﹳᐧ;ZLjava/lang/RuntimeException;)V
    .locals 3

    .prologue
    const-string v0, "AudioTrack init failed "

    const-string v1, " Config("

    const-string v2, ", "

    invoke-static {v0, p1, v1, p2, v2}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_0

    const-string p3, " (recoverable)"

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ʾˋ:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ᴵˊ:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    return-void
.end method
