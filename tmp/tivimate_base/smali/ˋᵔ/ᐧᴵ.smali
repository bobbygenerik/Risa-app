.class public Lˋᵔ/ᐧᴵ;
.super Lˋᵔ/ˊᵔ;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lˋᵔ/ˊᵔ;-><init>()V

    invoke-static {}, Lˋᵔ/ᐧﾞ;->ﹳٴ()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lˋᵔ/ˊᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lˋᵔ/ᐧﾞ;->ⁱˊ(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lˋᵔ/ᐧﾞ;->ﹳٴ()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public ˈ(Lᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public ˑﹳ(Lᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public ᵎﹶ(Lᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public ᵔᵢ(Lᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public ⁱˊ()Lˋᵔ/ᐧﹶ;
    .locals 3

    invoke-virtual {p0}, Lˋᵔ/ˊᵔ;->ﹳٴ()V

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    iget-object v1, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    iget-object v2, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v2, v1}, Lˋᵔ/ᵎʻ;->ʼᐧ([Lᵎⁱ/ⁱˊ;)V

    return-object v0
.end method

.method public ﾞᴵ(Lᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
