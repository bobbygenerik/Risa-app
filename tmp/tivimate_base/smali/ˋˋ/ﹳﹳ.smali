.class public final Lˋˋ/ﹳﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/Set;

.field public ⁱˊ:I

.field public final ﹳٴ:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lˋˋ/ﹳﹳ;->ﹳٴ:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ﹳﹳ;->ⁱˊ:I

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lˋˋ/ﹳﹳ;->ʽ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(II)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object p1

    iput p2, p1, Lˋˋ/ﹶᐧ;->ⁱˊ:I

    iget-object p1, p1, Lˋˋ/ﹶᐧ;->ﹳٴ:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﹳٴ(I)Lˋˋ/ﹶᐧ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ﹳﹳ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˋ/ﹶᐧ;

    if-nez v1, :cond_0

    new-instance v1, Lˋˋ/ﹶᐧ;

    invoke-direct {v1}, Lˋˋ/ﹶᐧ;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method
