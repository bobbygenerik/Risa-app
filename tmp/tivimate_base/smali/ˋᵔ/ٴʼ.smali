.class public final Lˋᵔ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Ljava/util/ArrayList;


# instance fields
.field public ʽ:Ljava/lang/ref/WeakReference;

.field public ⁱˊ:Landroid/util/SparseArray;

.field public ﹳٴ:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lˋᵔ/ٴʼ;->ˈ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lˋᵔ/ٴʼ;->ﹳٴ(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0392

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, p1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
