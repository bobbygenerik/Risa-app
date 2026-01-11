.class public final Lˋⁱ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/Object;

.field public final ʽ:Ljava/lang/Object;

.field public final ˆʾ:Ljava/lang/Object;

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/lang/Object;

.field public ٴﹶ:Ljava/lang/Object;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ᵔᵢ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:Z

.field public ﾞʻ:Ljava/lang/Object;

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lˋⁱ/ʾᵎ;

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v1, Lˋⁱ/ʾᵎ;

    invoke-direct {v1}, Lˋⁱ/ʾᵎ;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lˋⁱ/ʼᐧ;->ٴﹶ:Ljava/lang/Object;

    new-array v1, v1, [F

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ﾞʻ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˋⁱ/ʼᐧ;->ﹳٴ:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, [Lˋⁱ/ʾᵎ;

    new-instance v3, Lˋⁱ/ʾᵎ;

    invoke-direct {v3}, Lˋⁱ/ʾᵎ;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lⁱי/ᴵᵔ;Lʻʿ/ˆʾ;Lᐧˎ/ʻٴ;Lʻʿ/יـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ﾞᴵ:Ljava/lang/Object;

    new-instance p1, Lﹳᵢ/ᵎᵔ;

    invoke-direct {p1}, Lﹳᵢ/ᵎᵔ;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ٴﹶ:Ljava/lang/Object;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    iput-object p3, p0, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ʼˎ(II)V
    .locals 7

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_0
    if-lt p2, p1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱי/ˈⁱ;

    iget-object v3, p0, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v2, Lⁱי/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    iget-object v3, v3, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v3, v3, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v3}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v3

    neg-int v3, v3

    move v4, p2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lⁱי/ˈⁱ;

    iget v6, v5, Lⁱי/ˈⁱ;->ˈ:I

    add-int/2addr v6, v3

    iput v6, v5, Lⁱי/ˈⁱ;->ˈ:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v1, v2, Lⁱי/ˈⁱ;->ˑﹳ:Z

    iget-boolean v3, p0, Lˋⁱ/ʼᐧ;->ﹳٴ:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lˋⁱ/ʼᐧ;->ˑﹳ(Lⁱי/ˈⁱ;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ʽ()Lʽⁱ/ʼˈ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱי/ˈⁱ;

    iput v2, v3, Lⁱי/ˈⁱ;->ˈ:I

    iget-object v3, v3, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    iget-object v3, v3, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v3, v3, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v3}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lⁱי/ᐧﾞ;

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ٴﹶ:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ᵎᵔ;

    invoke-direct {v1, v0, v2}, Lⁱי/ᐧﾞ;-><init>(Ljava/util/ArrayList;Lﹳᵢ/ᵎᵔ;)V

    return-object v1
.end method

.method public ˈ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ˈⁱ;

    iget-object v2, v1, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ﹳـ;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lⁱי/ﹳـ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v1, v1, Lⁱי/ﹳـ;->ⁱˊ:Lⁱי/ᵔٴ;

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ˉʿ(Lﹳᵢ/ʾˋ;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ˑﹳ(Lⁱי/ˈⁱ;)V
    .locals 3

    .prologue
    iget-boolean v0, p1, Lⁱי/ˈⁱ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱי/ﹳـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lⁱי/ﹳـ;->ʽ:Lⁱי/ـˏ;

    iget-object v2, v0, Lⁱי/ﹳـ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v0, v0, Lⁱי/ﹳـ;->ⁱˊ:Lⁱי/ᵔٴ;

    invoke-interface {v2, v0}, Lﹳᵢ/ᴵˊ;->ٴﹶ(Lﹳᵢ/ʾˋ;)V

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ʼᐧ(Lﹳᵢ/ٴᵢ;)V

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ˆʾ(Lⁱᴵ/ˆʾ;)V

    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public ᵎﹶ(Lⁱי/ˈⁱ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    new-instance v1, Lⁱי/ᵔٴ;

    invoke-direct {v1, p0}, Lⁱי/ᵔٴ;-><init>(Lˋⁱ/ʼᐧ;)V

    new-instance v2, Lⁱי/ـˏ;

    invoke-direct {v2, p0, p1}, Lⁱי/ـˏ;-><init>(Lˋⁱ/ʼᐧ;Lⁱי/ˈⁱ;)V

    iget-object v3, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    new-instance v4, Lⁱי/ﹳـ;

    invoke-direct {v4, v0, v1, v2}, Lⁱי/ﹳـ;-><init>(Lﹳᵢ/ᴵˊ;Lⁱי/ᵔٴ;Lⁱי/ـˏ;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v3, v2}, Lﹳᵢ/ﹳٴ;->ˉˆ(Landroid/os/Handler;Lﹳᵢ/ٴᵢ;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0, v3, v2}, Lﹳᵢ/ﹳٴ;->ﾞʻ(Landroid/os/Handler;Lⁱᴵ/ˆʾ;)V

    iget-object p1, p0, Lˋⁱ/ʼᐧ;->ﾞʻ:Ljava/lang/Object;

    check-cast p1, Lـˊ/ᵔﹳ;

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lʻʿ/יـ;

    invoke-virtual {v0, v1, p1, v2}, Lﹳᵢ/ﹳٴ;->ᵔᵢ(Lﹳᵢ/ʾˋ;Lـˊ/ᵔﹳ;Lʻʿ/יـ;)V

    return-void
.end method

.method public ᵔᵢ(Lﹳᵢ/ʾᵎ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ˈⁱ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    invoke-virtual {v2, p1}, Lﹳᵢ/ʻٴ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    iget-object v2, v1, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    check-cast p1, Lﹳᵢ/יـ;

    iget-object p1, p1, Lﹳᵢ/יـ;->ʾˋ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lˋⁱ/ʼᐧ;->ˈ()V

    :cond_0
    invoke-virtual {p0, v1}, Lˋⁱ/ʼᐧ;->ˑﹳ(Lⁱי/ˈⁱ;)V

    return-void
.end method

.method public ⁱˊ(Lˋⁱ/ᵔʾ;[FFLandroid/graphics/RectF;Lˊⁱ/ˑﹳ;Landroid/graphics/Path;)V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    iget-object v5, v0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    check-cast v5, [Landroid/graphics/Matrix;

    iget-object v6, v0, Lˋⁱ/ʼᐧ;->ٴﹶ:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v7, [Lˋⁱ/ʾᵎ;

    iget-object v8, v0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v8, [Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v9, v0, Lˋⁱ/ʼᐧ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    iget-object v10, v0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v2, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v11, 0x1

    if-ge v12, v15, :cond_a

    iget-object v15, v0, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/PointF;

    if-nez p2, :cond_3

    if-eq v12, v11, :cond_2

    if-eq v12, v13, :cond_1

    if-eq v12, v14, :cond_0

    iget-object v14, v1, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    goto :goto_1

    :cond_0
    iget-object v14, v1, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    goto :goto_1

    :cond_1
    iget-object v14, v1, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    goto :goto_1

    :cond_2
    iget-object v14, v1, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    goto :goto_1

    :cond_3
    new-instance v14, Lˋⁱ/ʽ;

    aget v13, p2, v12

    invoke-direct {v14, v13}, Lˋⁱ/ʽ;-><init>(F)V

    :goto_1
    if-eq v12, v11, :cond_6

    const/4 v13, 0x2

    if-eq v12, v13, :cond_5

    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    iget-object v13, v1, Lˋⁱ/ᵔʾ;->ⁱˊ:Lﹳˋ/ٴﹶ;

    goto :goto_2

    :cond_4
    iget-object v13, v1, Lˋⁱ/ᵔʾ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_2

    :cond_5
    iget-object v13, v1, Lˋⁱ/ᵔʾ;->ˈ:Lﹳˋ/ٴﹶ;

    goto :goto_2

    :cond_6
    iget-object v13, v1, Lˋⁱ/ᵔʾ;->ʽ:Lﹳˋ/ٴﹶ;

    :goto_2
    aget-object v11, v7, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v14, v2}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v14

    move-object/from16 v18, v5

    move/from16 v5, p3

    invoke-virtual {v13, v11, v5, v14}, Lﹳˋ/ٴﹶ;->ʻٴ(Lˋⁱ/ʾᵎ;FF)V

    add-int/lit8 v11, v12, 0x1

    rem-int/lit8 v13, v11, 0x4

    mul-int/lit8 v13, v13, 0x5a

    int-to-float v13, v13

    aget-object v14, v8, v12

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    const/4 v14, 0x1

    if-eq v12, v14, :cond_9

    const/4 v14, 0x2

    if-eq v12, v14, :cond_8

    const/4 v14, 0x3

    if-eq v12, v14, :cond_7

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15, v14, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_9
    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v15, v5, v14}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    aget-object v5, v8, v12

    iget v14, v15, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v5, v8, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v5, v7, v12

    iget v14, v5, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    aput v14, v6, v16

    iget v5, v5, Lˋⁱ/ʾᵎ;->ʽ:F

    const/16 v17, 0x1

    aput v5, v6, v17

    aget-object v5, v8, v12

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v5, v18, v12

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    aget-object v5, v18, v12

    aget v14, v6, v16

    aget v15, v6, v17

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v5, v18, v12

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v12, v11

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_a
    move-object/from16 v18, v5

    move/from16 v5, v16

    :goto_4
    if-ge v5, v15, :cond_14

    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    aput v12, v6, v16

    iget v11, v11, Lˋⁱ/ʾᵎ;->ﹳٴ:F

    const/16 v17, 0x1

    aput v11, v6, v17

    aget-object v11, v8, v5

    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v5, :cond_b

    aget v11, v6, v16

    aget v13, v6, v17

    invoke-virtual {v4, v11, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_b
    aget v11, v6, v16

    aget v13, v6, v17

    invoke-virtual {v4, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v11, v7, v5

    aget-object v13, v8, v5

    invoke-virtual {v11, v13, v4}, Lˋⁱ/ʾᵎ;->ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v3, :cond_c

    aget-object v11, v7, v5

    aget-object v13, v8, v5

    iget-object v14, v3, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v14, Lˋⁱ/ʼˎ;

    iget-object v15, v14, Lˋⁱ/ʼˎ;->ᴵᵔ:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p2, v12

    move/from16 v12, v16

    invoke-virtual {v15, v5, v12}, Ljava/util/BitSet;->set(IZ)V

    iget-object v12, v14, Lˋⁱ/ʼˎ;->ʽʽ:[Lˋⁱ/ـˆ;

    iget v14, v11, Lˋⁱ/ʾᵎ;->ˑﹳ:F

    invoke-virtual {v11, v14}, Lˋⁱ/ʾᵎ;->ﹳٴ(F)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v13, Ljava/util/ArrayList;

    iget-object v11, v11, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Lˋⁱ/ᵔﹳ;

    invoke-direct {v11, v13, v14}, Lˋⁱ/ᵔﹳ;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v11, v12, v5

    goto :goto_6

    :cond_c
    move/from16 p2, v12

    :goto_6
    iget-object v11, v0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Path;

    iget-object v12, v0, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast v12, Lˋⁱ/ʾᵎ;

    add-int/lit8 v13, v5, 0x1

    rem-int/lit8 v14, v13, 0x4

    aget-object v15, v7, v5

    iget v2, v15, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    const/16 v16, 0x0

    aput v2, v6, v16

    iget v2, v15, Lˋⁱ/ʾᵎ;->ʽ:F

    const/16 v17, 0x1

    aput v2, v6, v17

    aget-object v2, v8, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, v0, Lˋⁱ/ʼᐧ;->ﾞʻ:Ljava/lang/Object;

    check-cast v2, [F

    aget-object v15, v7, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput p2, v2, v16

    iget v15, v15, Lˋⁱ/ʾᵎ;->ﹳٴ:F

    aput v15, v2, v17

    aget-object v15, v8, v14

    invoke-virtual {v15, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v15, v6, v16

    aget v19, v2, v16

    sub-float v15, v15, v19

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    float-to-double v7, v15

    aget v15, v6, v17

    aget v2, v2, v17

    sub-float/2addr v15, v2

    float-to-double v2, v15

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    move/from16 v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget-object v3, v19, v5

    iget v7, v3, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    const/16 v16, 0x0

    aput v7, v6, v16

    iget v3, v3, Lˋⁱ/ʾᵎ;->ʽ:F

    const/4 v7, 0x1

    aput v3, v6, v7

    aget-object v3, v20, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v5, v7, :cond_d

    const/4 v3, 0x3

    if-eq v5, v3, :cond_d

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aget v8, v6, v7

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    goto :goto_7

    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    const/16 v16, 0x0

    aget v7, v6, v16

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    :goto_7
    const/high16 v3, 0x43870000    # 270.0f

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v3, v7}, Lˋⁱ/ʾᵎ;->ˈ(FFF)V

    const/4 v7, 0x1

    if-eq v5, v7, :cond_10

    const/4 v3, 0x2

    if-eq v5, v3, :cond_f

    const/4 v7, 0x3

    if-eq v5, v7, :cond_e

    iget-object v8, v1, Lˋⁱ/ᵔʾ;->ˆʾ:Lˋⁱ/ﾞᴵ;

    goto :goto_8

    :cond_e
    iget-object v8, v1, Lˋⁱ/ᵔʾ;->ʼˎ:Lˋⁱ/ﾞᴵ;

    goto :goto_8

    :cond_f
    const/4 v7, 0x3

    iget-object v8, v1, Lˋⁱ/ᵔʾ;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    goto :goto_8

    :cond_10
    const/4 v3, 0x2

    const/4 v7, 0x3

    iget-object v8, v1, Lˋⁱ/ᵔʾ;->ٴﹶ:Lˋⁱ/ﾞᴵ;

    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v12, v2, v8}, Lˋⁱ/ʾᵎ;->ʽ(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v11}, Lˋⁱ/ʾᵎ;->ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v2, v0, Lˋⁱ/ʼᐧ;->ﹳٴ:Z

    if-eqz v2, :cond_11

    invoke-virtual {v0, v11, v5}, Lˋⁱ/ʼᐧ;->ﾞᴵ(Landroid/graphics/Path;I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v11, v14}, Lˋⁱ/ʼᐧ;->ﾞᴵ(Landroid/graphics/Path;I)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    const/16 v17, 0x1

    goto :goto_a

    :cond_12
    :goto_9
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v11, v11, v10, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 v8, 0x0

    const/16 v16, 0x0

    aput v8, v6, v16

    iget v2, v12, Lˋⁱ/ʾᵎ;->ﹳٴ:F

    const/16 v17, 0x1

    aput v2, v6, v17

    aget-object v2, v18, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v6, v16

    aget v8, v6, v17

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v9}, Lˋⁱ/ʾᵎ;->ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_b

    :goto_a
    aget-object v2, v18, v5

    invoke-virtual {v12, v2, v4}, Lˋⁱ/ʾᵎ;->ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_b
    if-eqz p5, :cond_13

    aget-object v2, v18, v5

    move-object/from16 v8, p5

    iget-object v11, v8, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v11, Lˋⁱ/ʼˎ;

    iget-object v14, v11, Lˋⁱ/ʼˎ;->ᴵᵔ:Ljava/util/BitSet;

    add-int/lit8 v15, v5, 0x4

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v3}, Ljava/util/BitSet;->set(IZ)V

    iget-object v11, v11, Lˋⁱ/ʼˎ;->ˈٴ:[Lˋⁱ/ـˆ;

    iget v14, v12, Lˋⁱ/ʾᵎ;->ˑﹳ:F

    invoke-virtual {v12, v14}, Lˋⁱ/ʾᵎ;->ﹳٴ(F)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v12, v12, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lˋⁱ/ᵔﹳ;

    invoke-direct {v12, v2, v14}, Lˋⁱ/ᵔﹳ;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v12, v11, v5

    goto :goto_c

    :cond_13
    move-object/from16 v8, p5

    const/4 v3, 0x0

    :goto_c
    move-object/from16 v2, p4

    move/from16 v16, v3

    move-object v3, v8

    move v5, v13

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v15, 0x4

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v9, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_15
    return-void
.end method

.method public ﹳٴ(ILjava/util/ArrayList;Lﹳᵢ/ᵎᵔ;)Lʽⁱ/ʼˈ;
    .locals 6

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p3, p0, Lˋⁱ/ʼᐧ;->ٴﹶ:Ljava/lang/Object;

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_4

    sub-int v1, p3, p1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ˈⁱ;

    const/4 v2, 0x0

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱי/ˈⁱ;

    iget-object v4, v3, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    iget-object v4, v4, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget v3, v3, Lⁱי/ˈⁱ;->ˈ:I

    iget-object v4, v4, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Lⁱי/ˈⁱ;->ˈ:I

    iput-boolean v2, v1, Lⁱי/ˈⁱ;->ˑﹳ:Z

    iget-object v2, v1, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iput v2, v1, Lⁱי/ˈⁱ;->ˈ:I

    iput-boolean v2, v1, Lⁱי/ˈⁱ;->ˑﹳ:Z

    iget-object v2, v1, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v2, v1, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    iget-object v2, v2, Lﹳᵢ/ʻٴ;->ˈʿ:Lﹳᵢ/ˏי;

    iget-object v2, v2, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v2}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v2

    move v3, p3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lⁱי/ˈⁱ;

    iget v5, v4, Lⁱי/ˈⁱ;->ˈ:I

    add-int/2addr v5, v2

    iput v5, v4, Lⁱי/ˈⁱ;->ˈ:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v1, Lⁱי/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lˋⁱ/ʼᐧ;->ﹳٴ:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lˋⁱ/ʼᐧ;->ᵎﹶ(Lⁱי/ˈⁱ;)V

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ﹳـ;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lⁱי/ﹳـ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object v1, v1, Lⁱי/ﹳـ;->ⁱˊ:Lⁱי/ᵔٴ;

    invoke-interface {v2, v1}, Lﹳᵢ/ᴵˊ;->ˉʿ(Lﹳᵢ/ʾˋ;)V

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lˋⁱ/ʼᐧ;->ʽ()Lʽⁱ/ʼˈ;

    move-result-object p1

    return-object p1
.end method

.method public ﾞᴵ(Landroid/graphics/Path;I)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lˋⁱ/ʼᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, [Lˋⁱ/ʾᵎ;

    aget-object v1, v1, p2

    iget-object v2, p0, Lˋⁱ/ʼᐧ;->ʽ:Ljava/lang/Object;

    check-cast v2, [Landroid/graphics/Matrix;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2, v0}, Lˋⁱ/ʾᵎ;->ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method
