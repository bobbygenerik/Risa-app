.class public final Lﹶ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lﹶ/יـ;

.field public final ⁱˊ:Lﹶ/ˑﹳ;

.field public final ﹳٴ:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lﹶ/ˑﹳ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶ/ˏי;->ﹳٴ:Landroid/media/AudioTrack;

    iput-object p2, p0, Lﹶ/ˏי;->ⁱˊ:Lﹶ/ˑﹳ;

    new-instance p2, Lﹶ/יـ;

    invoke-direct {p2, p0}, Lﹶ/יـ;-><init>(Lﹶ/ˏי;)V

    iput-object p2, p0, Lﹶ/ˏי;->ʽ:Lﹶ/יـ;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lﹶ/ˏי;->ʽ:Lﹶ/יـ;

    invoke-virtual {p1, v0, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static ﹳٴ(Lﹶ/ˏי;Landroid/media/AudioRouting;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶ/ˏי;->ʽ:Lﹶ/יـ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lﹶ/ˏי;->ⁱˊ:Lﹶ/ˑﹳ;

    invoke-virtual {p0, p1}, Lﹶ/ˑﹳ;->ⁱˊ(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    iget-object v0, p0, Lﹶ/ˏי;->ʽ:Lﹶ/יـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹶ/ˏי;->ﹳٴ:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶ/ˏי;->ʽ:Lﹶ/יـ;

    return-void
.end method
