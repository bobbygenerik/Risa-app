.class public Lˋᵔ/ˏᵢ;
.super Lˋᵔ/ᐧᴵ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lˋᵔ/ᐧᴵ;-><init>()V

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    invoke-direct {p0, p1}, Lˋᵔ/ᐧᴵ;-><init>(Lˋᵔ/ᐧﹶ;)V

    return-void
.end method


# virtual methods
.method public ʽ(ILᵎⁱ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧᴵ;->ʽ:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Lˋᵔ/ـᵎ;->ﹳٴ(I)I

    move-result p1

    invoke-virtual {p2}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
