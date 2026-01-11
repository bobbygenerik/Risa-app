.class public final Lﹶʽ/ˆʾ;
.super Lʽⁱ/ˉـ;
.source "SourceFile"


# static fields
.field public static final ˊʻ:Lﹶʽ/ˆʾ;


# instance fields
.field public final ʻٴ:Z

.field public final ʼʼ:Z

.field public final ʽʽ:Z

.field public final ʾˋ:Z

.field public final ʾᵎ:Z

.field public final ˈٴ:Landroid/util/SparseArray;

.field public final ـˆ:Z

.field public final ᴵˊ:Z

.field public final ᴵᵔ:Landroid/util/SparseBooleanArray;

.field public final ᵢˏ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lﹶʽ/ʼˎ;

    invoke-direct {v0}, Lﹶʽ/ʼˎ;-><init>()V

    new-instance v1, Lﹶʽ/ˆʾ;

    invoke-direct {v1, v0}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    sput-object v1, Lﹶʽ/ˆʾ;->ˊʻ:Lﹶʽ/ˆʾ;

    const/16 v0, 0x3eb

    const/16 v1, 0x3ec

    const/16 v2, 0x3e8

    const/16 v3, 0x3e9

    const/16 v4, 0x3ea

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0x3f0

    const/16 v1, 0x3f1

    const/16 v2, 0x3ed

    const/16 v3, 0x3ee

    const/16 v4, 0x3ef

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0x3f5

    const/16 v1, 0x3f6

    const/16 v2, 0x3f2

    const/16 v3, 0x3f3

    const/16 v4, 0x3f4

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0x3f7

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/16 v0, 0x3f8

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/16 v0, 0x3f9

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/16 v0, 0x3fa

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Lﹶʽ/ʼˎ;)V
    .locals 1

    invoke-direct {p0, p1}, Lʽⁱ/ˉـ;-><init>(Lʽⁱ/ᴵˑ;)V

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ʻٴ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ʻٴ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ـˆ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ـˆ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ʾᵎ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ʼʼ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ʼʼ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ᵢˏ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ʾˋ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ʾˋ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ᴵˊ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    iget-boolean v0, p1, Lﹶʽ/ʼˎ;->ʽʽ:Z

    iput-boolean v0, p0, Lﹶʽ/ˆʾ;->ʽʽ:Z

    iget-object v0, p1, Lﹶʽ/ʼˎ;->ˈٴ:Landroid/util/SparseArray;

    iput-object v0, p0, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    iget-object p1, p1, Lﹶʽ/ʼˎ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-class v1, Lﹶʽ/ˆʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lﹶʽ/ˆʾ;

    invoke-super {p0, p1}, Lʽⁱ/ˉـ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ʻٴ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ʻٴ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ـˆ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ـˆ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ʼʼ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ʼʼ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ʾˋ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ʾˋ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lﹶʽ/ˆʾ;->ʽʽ:Z

    iget-boolean v2, p1, Lﹶʽ/ˆʾ;->ʽʽ:Z

    if-ne v1, v2, :cond_a

    iget-object v1, p1, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-eq v4, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    iget-object v1, p0, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v3, v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v7, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹳᵢ/ʻᵎ;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_a
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-super {p0}, Lʽⁱ/ˉـ;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ʻٴ:Z

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ـˆ:Z

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    add-int/2addr v0, v2

    const v2, 0x1b4d89f

    mul-int/2addr v0, v2

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ʼʼ:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ʾˋ:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lﹶʽ/ˆʾ;->ʽʽ:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public final ﹳٴ()Lʽⁱ/ᴵˑ;
    .locals 1

    new-instance v0, Lﹶʽ/ʼˎ;

    invoke-direct {v0, p0}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    return-object v0
.end method
