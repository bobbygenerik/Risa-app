.class public final Lﹶ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:J

.field public ᵎﹶ:J

.field public final ⁱˊ:Landroid/media/AudioTimestamp;

.field public final ﹳٴ:Landroid/media/AudioTrack;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶ/ٴﹶ;->ﹳٴ:Landroid/media/AudioTrack;

    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Lﹶ/ٴﹶ;->ⁱˊ:Landroid/media/AudioTimestamp;

    return-void
.end method
