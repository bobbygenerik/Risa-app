.class public final Lˋᵔ/ᴵˑ;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/util/ArrayList;

.field public final ˈ:Ljava/util/HashMap;

.field public ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Lʽⁱ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lʽⁱ/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˋᵔ/ᴵˑ;->ˈ:Ljava/util/HashMap;

    iput-object p1, p0, Lˋᵔ/ᴵˑ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    invoke-virtual {p0, p1}, Lˋᵔ/ᴵˑ;->ﹳٴ(Landroid/view/WindowInsetsAnimation;)Lˋᵔ/ʿᵢ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʽⁱ/ᵎﹶ;->יﹳ(Lˋᵔ/ʿᵢ;)V

    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    invoke-virtual {p0, p1}, Lˋᵔ/ᴵˑ;->ﹳٴ(Landroid/view/WindowInsetsAnimation;)Lˋᵔ/ʿᵢ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʽⁱ/ᵎﹶ;->ʽⁱ(Lˋᵔ/ʿᵢ;)V

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    .prologue
    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ʽ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lˋᵔ/ᴵˑ;->ʽ:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ᴵˑ;->ⁱˊ:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v1}, Lˋᵔ/ᴵˑ;->ﹳٴ(Landroid/view/WindowInsetsAnimation;)Lˋᵔ/ʿᵢ;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    iget-object v3, v2, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v3, v1}, Lˋᵔ/ʿ;->ˑﹳ(F)V

    iget-object v1, p0, Lˋᵔ/ᴵˑ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, p1}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    iget-object p2, p0, Lˋᵔ/ᴵˑ;->ⁱˊ:Ljava/util/List;

    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    invoke-virtual {v0, p1, p2}, Lʽⁱ/ᵎﹶ;->ʾﾞ(Lˋᵔ/ᐧﹶ;Ljava/util/List;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    invoke-virtual {p0, p1}, Lˋᵔ/ᴵˑ;->ﹳٴ(Landroid/view/WindowInsetsAnimation;)Lˋᵔ/ʿᵢ;

    move-result-object p1

    new-instance v0, Lﹶﾞ/ⁱי;

    invoke-direct {v0, p2}, Lﹶﾞ/ⁱי;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    iget-object p2, p0, Lˋᵔ/ᴵˑ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    invoke-virtual {p2, p1, v0}, Lʽⁱ/ᵎﹶ;->ⁱˉ(Lˋᵔ/ʿᵢ;Lﹶﾞ/ⁱי;)Lﹶﾞ/ⁱי;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lˋᵔ/ˈⁱ;->ʽ()V

    iget-object p2, p1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎⁱ/ⁱˊ;

    invoke-virtual {p2}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p2

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᵎⁱ/ⁱˊ;

    invoke-virtual {p1}, Lᵎⁱ/ⁱˊ;->ˑﹳ()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p2, p1}, Lˋᵔ/ˈⁱ;->ﹳٴ(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Landroid/view/WindowInsetsAnimation;)Lˋᵔ/ʿᵢ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˋᵔ/ᴵˑ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ʿᵢ;

    if-nez v0, :cond_1

    new-instance v0, Lˋᵔ/ʿᵢ;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lˋᵔ/ʿᵢ;-><init>(ILandroid/view/animation/Interpolator;J)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Lˋᵔ/ˉـ;

    invoke-direct {v1, p1}, Lˋᵔ/ˉـ;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v1, v0, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    :cond_0
    iget-object v1, p0, Lˋᵔ/ᴵˑ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
