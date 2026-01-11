.class public final Lˋᵔ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic ʽ:Lˋᵔ/ˉˆ;

.field public final synthetic ⁱˊ:Landroid/view/View;

.field public ﹳٴ:Lˋᵔ/ᐧﹶ;


# direct methods
.method public constructor <init>(Landroid/view/View;Lˋᵔ/ˉˆ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lˋᵔ/ᴵˊ;->ⁱˊ:Landroid/view/View;

    iput-object p2, p0, Lˋᵔ/ᴵˊ;->ʽ:Lˋᵔ/ˉˆ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lˋᵔ/ᴵˊ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .prologue
    invoke-static {p1, p2}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lˋᵔ/ᴵˊ;->ʽ:Lˋᵔ/ˉˆ;

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lˋᵔ/ᴵˊ;->ⁱˊ:Landroid/view/View;

    invoke-static {p2, v4}, Lˋᵔ/ʽʽ;->ﹳٴ(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Lˋᵔ/ᴵˊ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v0, p2}, Lˋᵔ/ᐧﹶ;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v2, p1, v0}, Lˋᵔ/ˉˆ;->ﾞʻ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Lˋᵔ/ᴵˊ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    invoke-interface {v2, p1, v0}, Lˋᵔ/ˉˆ;->ﾞʻ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)Lˋᵔ/ᐧﹶ;

    move-result-object p2

    if-lt v1, v3, :cond_1

    invoke-virtual {p2}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    invoke-virtual {p2}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
