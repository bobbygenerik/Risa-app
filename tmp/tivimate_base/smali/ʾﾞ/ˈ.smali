.class public final Lʾﾞ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/os/Handler;

.field public final ˈ:Lʽⁱ/ˑﹳ;

.field public final ˑﹳ:Z

.field public final ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lʽⁱ/ˑﹳ;Z)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʾﾞ/ˈ;->ﹳٴ:I

    iput-object p3, p0, Lʾﾞ/ˈ;->ʽ:Landroid/os/Handler;

    iput-object p4, p0, Lʾﾞ/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    iput-boolean p5, p0, Lʾﾞ/ˈ;->ˑﹳ:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance v2, Lʾﾞ/ʽ;

    invoke-direct {v2, p2, p3}, Lʾﾞ/ʽ;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lʾﾞ/ˈ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lʾﾞ/ˈ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :goto_0
    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p4}, Lʽⁱ/ˑﹳ;->ﹳٴ()Lﹳי/ʽ;

    move-result-object p1

    iget-object p1, p1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lʾﾞ/ˈ;->ﾞᴵ:Ljava/lang/Object;

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lʾﾞ/ˈ;->ﾞᴵ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾﾞ/ˈ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾﾞ/ˈ;

    iget v1, p0, Lʾﾞ/ˈ;->ﹳٴ:I

    iget v3, p1, Lʾﾞ/ˈ;->ﹳٴ:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lʾﾞ/ˈ;->ˑﹳ:Z

    iget-boolean v3, p1, Lʾﾞ/ˈ;->ˑﹳ:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lʾﾞ/ˈ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v3, p1, Lʾﾞ/ˈ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʾﾞ/ˈ;->ʽ:Landroid/os/Handler;

    iget-object v3, p1, Lʾﾞ/ˈ;->ʽ:Landroid/os/Handler;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʾﾞ/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    iget-object p1, p1, Lʾﾞ/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lʾﾞ/ˈ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lʾﾞ/ˈ;->ˑﹳ:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lʾﾞ/ˈ;->ⁱˊ:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lʾﾞ/ˈ;->ʽ:Landroid/os/Handler;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lʾﾞ/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
