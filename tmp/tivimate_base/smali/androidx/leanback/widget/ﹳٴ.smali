.class public final Landroidx/leanback/widget/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋˋ/ˑʼ;


# instance fields
.field public final synthetic ﹳٴ:Landroidx/leanback/widget/ᵔᵢ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˋˋ/ʼـ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/ᵔᵢ;

    iget-object v0, v0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget v2, v0, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˋˋ/ـˊ;

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object p1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    invoke-virtual {p1, v1, v2}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object p1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    monitor-enter v2

    :try_start_0
    iget p1, p1, Lˋˋ/ـˊ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lˋˋ/ـˊ;->ˉʿ(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
