.class public Landroidx/media3/common/PlaybackException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final ʾˋ:I

.field public final ᴵˊ:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Landroidx/media3/common/PlaybackException;->ʾˋ:I

    iput-wide p4, p0, Landroidx/media3/common/PlaybackException;->ᴵˊ:J

    return-void
.end method
