.class public final Lⁱי/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lⁱי/ᴵᵔ;

.field public ˈ:Lʽⁱ/ˑﹳ;

.field public ˑﹳ:I

.field public ᵎﹶ:F

.field public ᵔᵢ:Lʾﾞ/ˈ;

.field public final ⁱˊ:Landroid/os/Handler;

.field public final ﹳٴ:Lˆʽ/ٴﹶ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lⁱי/ᴵᵔ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lⁱי/ˈ;->ᵎﹶ:F

    new-instance v0, Lⁱי/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lⁱי/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lʽٴ/ˈ;->ʽﹳ(Lˆʽ/ٴﹶ;)Lˆʽ/ٴﹶ;

    move-result-object p1

    iput-object p1, p0, Lⁱי/ˈ;->ﹳٴ:Lˆʽ/ٴﹶ;

    iput-object p3, p0, Lⁱי/ˈ;->ʽ:Lⁱי/ᴵᵔ;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lⁱי/ˈ;->ⁱˊ:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lⁱי/ˈ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(IZ)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    iget p1, p0, Lⁱי/ˈ;->ﾞᴵ:I

    if-ne p1, v1, :cond_8

    const/4 v2, -0x1

    if-eqz p2, :cond_5

    iget p2, p0, Lⁱי/ˈ;->ˑﹳ:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lⁱי/ˈ;->ᵔᵢ:Lʾﾞ/ˈ;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lʾﾞ/ﹳٴ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lʽⁱ/ˑﹳ;->ʽ:Lʽⁱ/ˑﹳ;

    iput-object v4, p2, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    iput p1, p2, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_2
    new-instance p1, Lʾﾞ/ﹳٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget v4, p2, Lʾﾞ/ˈ;->ﹳٴ:I

    iput v4, p1, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    iget-object v4, p2, Lʾﾞ/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    iput-object v4, p1, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    iget-boolean p2, p2, Lʾﾞ/ˈ;->ˑﹳ:Z

    iput-boolean p2, p1, Lʾﾞ/ﹳٴ;->ﹳٴ:Z

    move-object p2, p1

    :goto_0
    iget-object p1, p0, Lⁱי/ˈ;->ˈ:Lʽⁱ/ˑﹳ;

    if-eqz p1, :cond_3

    iget v4, p1, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    if-ne v4, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    iput-boolean v0, p2, Lʾﾞ/ﹳٴ;->ﹳٴ:Z

    new-instance v6, Lⁱי/ⁱˊ;

    invoke-direct {v6, p0}, Lⁱי/ⁱˊ;-><init>(Lⁱי/ˈ;)V

    iget-object v7, p0, Lⁱי/ˈ;->ⁱˊ:Landroid/os/Handler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lʾﾞ/ˈ;

    iget v5, p2, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    iget-object p1, p2, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lʽⁱ/ˑﹳ;

    iget-boolean v9, p2, Lʾﾞ/ﹳٴ;->ﹳٴ:Z

    invoke-direct/range {v4 .. v9}, Lʾﾞ/ˈ;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lʽⁱ/ˑﹳ;Z)V

    iput-object v4, p0, Lⁱי/ˈ;->ᵔᵢ:Lʾﾞ/ˈ;

    :goto_1
    iget-object p1, p0, Lⁱי/ˈ;->ﹳٴ:Lˆʽ/ٴﹶ;

    invoke-interface {p1}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p2, p0, Lⁱי/ˈ;->ᵔᵢ:Lʾﾞ/ˈ;

    invoke-static {p1, p2}, Lʾﾞ/ˑﹳ;->ᵎﹶ(Landroid/media/AudioManager;Lʾﾞ/ˈ;)I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v3}, Lⁱי/ˈ;->ⁱˊ(I)V

    return v1

    :cond_4
    invoke-virtual {p0, v1}, Lⁱי/ˈ;->ⁱˊ(I)V

    return v2

    :cond_5
    iget p1, p0, Lⁱי/ˈ;->ˑﹳ:I

    if-eq p1, v1, :cond_7

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    :goto_2
    return v1

    :cond_6
    return v0

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p0}, Lⁱי/ˈ;->ﹳٴ()V

    invoke-virtual {p0, v0}, Lⁱי/ˈ;->ⁱˊ(I)V

    return v1
.end method

.method public final ⁱˊ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lⁱי/ˈ;->ˑﹳ:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lⁱי/ˈ;->ˑﹳ:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lⁱי/ˈ;->ᵎﹶ:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Lⁱי/ˈ;->ᵎﹶ:F

    iget-object p1, p0, Lⁱי/ˈ;->ʽ:Lⁱי/ᴵᵔ;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ˑﹳ(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lⁱי/ˈ;->ˑﹳ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lⁱי/ˈ;->ᵔᵢ:Lʾﾞ/ˈ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lⁱי/ˈ;->ﹳٴ:Lˆʽ/ٴﹶ;

    invoke-interface {v0}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lⁱי/ˈ;->ᵔᵢ:Lʾﾞ/ˈ;

    invoke-static {v0, v1}, Lʾﾞ/ˑﹳ;->ﹳٴ(Landroid/media/AudioManager;Lʾﾞ/ˈ;)V

    :cond_1
    :goto_0
    return-void
.end method
