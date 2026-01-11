.class public Lˋᵔ/ʻˋ;
.super Lˋᵔ/ﹳﹳ;
.source "SourceFile"


# static fields
.field public static final ﹳᐧ:Lˋᵔ/ᐧﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lˊˋ/ⁱˊ;->ʽ()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    sput-object v0, Lˋᵔ/ʻˋ;->ﹳᐧ:Lˋᵔ/ᐧﹶ;

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lˋᵔ/ﹳﹳ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final ˈ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public ᵎﹶ(I)Lᵎⁱ/ⁱˊ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-static {p1}, Lˋᵔ/ـᵎ;->ﹳٴ(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public ﾞᴵ(I)Lᵎⁱ/ⁱˊ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    invoke-static {p1}, Lˋᵔ/ـᵎ;->ﹳٴ(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method
