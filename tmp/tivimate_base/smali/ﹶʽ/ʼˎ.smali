.class public final Lﹶʽ/ʼˎ;
.super Lʽⁱ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ʻٴ:Z

.field public final ʼʼ:Z

.field public final ʽʽ:Z

.field public final ʾˋ:Z

.field public final ʾᵎ:Z

.field public final ˈٴ:Landroid/util/SparseArray;

.field public final ـˆ:Z

.field public ᴵˊ:Z

.field public final ᴵᵔ:Landroid/util/SparseBooleanArray;

.field public final ᵢˏ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lʽⁱ/ᴵˑ;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lﹶʽ/ʼˎ;->ˈٴ:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lﹶʽ/ʼˎ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʻٴ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ـˆ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʾᵎ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʼʼ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ᵢˏ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʾˋ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹶʽ/ʼˎ;->ᴵˊ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʽʽ:Z

    return-void
.end method

.method public constructor <init>(Lﹶʽ/ˆʾ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lʽⁱ/ᴵˑ;->ʽ(Lʽⁱ/ˉـ;)V

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ʻٴ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʻٴ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ـˆ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ـˆ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʾᵎ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ʼʼ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʼʼ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ᵢˏ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ʾˋ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʾˋ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ᴵˊ:Z

    iget-boolean v0, p1, Lﹶʽ/ˆʾ;->ʽʽ:Z

    iput-boolean v0, p0, Lﹶʽ/ʼˎ;->ʽʽ:Z

    iget-object v0, p1, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lﹶʽ/ʼˎ;->ˈٴ:Landroid/util/SparseArray;

    iget-object p1, p1, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lﹶʽ/ʼˎ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final ʼˎ(IZ)Lʽⁱ/ᴵˑ;
    .locals 0

    invoke-super {p0, p1, p2}, Lʽⁱ/ᴵˑ;->ʼˎ(IZ)Lʽⁱ/ᴵˑ;

    return-object p0
.end method

.method public final ˆʾ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶʽ/ʼˎ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˈ()Lʽⁱ/ᴵˑ;
    .locals 1

    const/4 v0, -0x3

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳᐧ:I

    return-object p0
.end method

.method public final ˑﹳ(Lʽⁱ/ﹳـ;)Lʽⁱ/ᴵˑ;
    .locals 0

    invoke-super {p0, p1}, Lʽⁱ/ᴵˑ;->ˑﹳ(Lʽⁱ/ﹳـ;)Lʽⁱ/ᴵˑ;

    return-object p0
.end method

.method public final ٴﹶ(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final ᵎﹶ([Ljava/lang/String;)Lʽⁱ/ᴵˑ;
    .locals 0

    invoke-super {p0, p1}, Lʽⁱ/ᴵˑ;->ᵎﹶ([Ljava/lang/String;)Lʽⁱ/ᴵˑ;

    return-object p0
.end method

.method public final ᵔᵢ()Lʽⁱ/ᴵˑ;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->ᵔﹳ:Z

    return-object p0
.end method

.method public final ⁱˊ(I)Lʽⁱ/ᴵˑ;
    .locals 0

    invoke-super {p0, p1}, Lʽⁱ/ᴵˑ;->ⁱˊ(I)Lʽⁱ/ᴵˑ;

    return-object p0
.end method

.method public final ﹳٴ()Lʽⁱ/ˉـ;
    .locals 1

    new-instance v0, Lﹶʽ/ˆʾ;

    invoke-direct {v0, p0}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    return-object v0
.end method

.method public final ﾞʻ(ILﹳᵢ/ʻᵎ;Lﹶʽ/ٴﹶ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶʽ/ʼˎ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ﾞᴵ()Lʽⁱ/ᴵˑ;
    .locals 0

    invoke-super {p0}, Lʽⁱ/ᴵˑ;->ﾞᴵ()Lʽⁱ/ᴵˑ;

    return-object p0
.end method
