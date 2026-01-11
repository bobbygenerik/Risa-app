.class public abstract Lˑʿ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ˏᵢ:Lᵎˉ/ⁱˊ;

.field public static final ᐧᴵ:[I

.field public static final ᐧﾞ:[Landroid/animation/Animator;

.field public static final ᴵʼ:Ljava/lang/ThreadLocal;


# instance fields
.field public ʼˈ:Z

.field public ʽʽ:J

.field public final ʾˋ:Ljava/lang/String;

.field public ʿ:J

.field public ʿᵢ:Lˑʿ/ﹳᐧ;

.field public ˆﾞ:Ljava/util/ArrayList;

.field public final ˈʿ:Ljava/util/ArrayList;

.field public ˈٴ:Landroid/animation/TimeInterpolator;

.field public ˈⁱ:Ljava/util/ArrayList;

.field public ˉـ:Lᵎˉ/ⁱˊ;

.field public ˉٴ:Lˏˆ/ﹳٴ;

.field public final ˊʻ:Ljava/util/ArrayList;

.field public ˊˋ:Z

.field public ˋᵔ:I

.field public ˑٴ:[Landroid/animation/Animator;

.field public ـˏ:Lˑʿ/ʻٴ;

.field public ٴʼ:Lˑʿ/ᴵˊ;

.field public ٴᵢ:Ljava/util/ArrayList;

.field public ᴵˊ:J

.field public ᴵˑ:Lʽٴ/ˈ;

.field public final ᴵᵔ:Ljava/util/ArrayList;

.field public final ᵎˊ:[I

.field public ᵎᵔ:J

.field public ᵎⁱ:Lˏˆ/ﹳٴ;

.field public ᵔי:Ljava/util/ArrayList;

.field public ᵔٴ:[Lˑʿ/יـ;

.field public ﹳـ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lˑʿ/ʻٴ;->ᐧᴵ:[I

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˑʿ/ʻٴ;->ˏᵢ:Lᵎˉ/ⁱˊ;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lˑʿ/ʻٴ;->ᴵʼ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʿ/ʻٴ;->ʾˋ:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    iput-wide v0, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    iput-object v0, p0, Lˑʿ/ʻٴ;->ٴᵢ:Ljava/util/ArrayList;

    new-instance v1, Lˏˆ/ﹳٴ;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v1, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    new-instance v1, Lˏˆ/ﹳٴ;

    invoke-direct {v1, v2}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v1, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iput-object v0, p0, Lˑʿ/ʻٴ;->ٴʼ:Lˑʿ/ᴵˊ;

    sget-object v1, Lˑʿ/ʻٴ;->ᐧᴵ:[I

    iput-object v1, p0, Lˑʿ/ʻٴ;->ᵎˊ:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    sget-object v1, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    iput-object v1, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    const/4 v1, 0x0

    iput v1, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    iput-boolean v1, p0, Lˑʿ/ʻٴ;->ˊˋ:Z

    iput-boolean v1, p0, Lˑʿ/ʻٴ;->ʼˈ:Z

    iput-object v0, p0, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    iput-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    sget-object v0, Lˑʿ/ʻٴ;->ˏᵢ:Lᵎˉ/ⁱˊ;

    iput-object v0, p0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    return-void
.end method

.method public static ʻٴ()Lיـ/ˑﹳ;
    .locals 3

    .prologue
    sget-object v0, Lˑʿ/ʻٴ;->ᴵʼ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיـ/ˑﹳ;

    if-nez v1, :cond_0

    new-instance v1, Lיـ/ˑﹳ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lיـ/ﹳᐧ;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static ʽʽ(Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;Ljava/lang/String;)Z
    .locals 0

    .prologue
    iget-object p0, p0, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V
    .locals 11

    .prologue
    iget-object v0, p0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיـ/ˑﹳ;

    iget-object v1, p0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    iget-object v2, p0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object p0, p0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lיـ/ʼˎ;

    invoke-virtual {v0, p1, p2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-boolean p2, p0, Lיـ/ʼˎ;->ʾˋ:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    iget p2, p0, Lיـ/ʼˎ;->ˈٴ:I

    iget-object v4, p0, Lיـ/ʼˎ;->ᴵˊ:[J

    iget-object v5, p0, Lיـ/ʼˎ;->ʽʽ:[Ljava/lang/Object;

    move v6, v3

    move v7, v6

    :goto_2
    if-ge v6, p2, :cond_6

    aget-object v8, v5, v6

    sget-object v9, Lיـ/ˆʾ;->ﹳٴ:Ljava/lang/Object;

    if-eq v8, v9, :cond_5

    if-eq v6, v7, :cond_4

    aget-wide v9, v4, v6

    aput-wide v9, v4, v7

    aput-object v8, v5, v7

    aput-object v0, v5, v6

    :cond_4
    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v3, p0, Lיـ/ʼˎ;->ʾˋ:Z

    iput v7, p0, Lיـ/ʼˎ;->ˈٴ:I

    :cond_7
    iget-object p2, p0, Lיـ/ʼˎ;->ᴵˊ:[J

    iget v4, p0, Lיـ/ʼˎ;->ˈٴ:I

    invoke-static {p2, v4, v1, v2}, Lˏי/ﹳٴ;->ⁱˊ([JIJ)I

    move-result p2

    if-ltz p2, :cond_8

    invoke-virtual {p0, v1, v2}, Lיـ/ʼˎ;->ˑﹳ(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, v0}, Lיـ/ʼˎ;->ʼˎ(JLjava/lang/Object;)V

    return-void

    :cond_8
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, p1}, Lיـ/ʼˎ;->ʼˎ(JLjava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    sget-object v2, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    iput-object v2, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    sget-object v0, Lˑʿ/ʽﹳ;->ˏי:Lˊˋ/ⁱˊ;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ﾞʻ()Lˑʿ/ʻٴ;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ـˏ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼʼ()Z
    .locals 1

    iget-object v0, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ʼˈ()V
    .locals 1

    .prologue
    iget v0, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    if-nez v0, :cond_0

    sget-object v0, Lˑʿ/ʽﹳ;->ﹳᐧ:Lˊˋ/ⁱˊ;

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ᴵᵔ(Lˑʿ/ʽﹳ;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʿ/ʻٴ;->ʼˈ:Z

    :cond_0
    iget v0, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    return-void
.end method

.method public abstract ʼˎ(Lˑʿ/ᴵᵔ;)V
.end method

.method public final ʼᐧ()V
    .locals 4

    .prologue
    iget v0, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lˑʿ/ʻٴ;->ˋᵔ:I

    if-nez v0, :cond_4

    sget-object v0, Lˑʿ/ʽﹳ;->יـ:Lˊˋ/ⁱˊ;

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ᴵᵔ(Lˑʿ/ʽﹳ;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    iget-object v3, v3, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ʼˎ;

    invoke-virtual {v3}, Lיـ/ʼˎ;->ˆʾ()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    iget-object v3, v3, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ʼˎ;

    invoke-virtual {v3, v2}, Lיـ/ʼˎ;->ٴﹶ(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    iget-object v3, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iget-object v3, v3, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ʼˎ;

    invoke-virtual {v3}, Lיـ/ʼˎ;->ˆʾ()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iget-object v3, v3, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ʼˎ;

    invoke-virtual {v3, v2}, Lיـ/ʼˎ;->ٴﹶ(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lˑʿ/ʻٴ;->ʼˈ:Z

    :cond_4
    return-void
.end method

.method public final ʽﹳ()Lˑʿ/ʻٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ٴʼ:Lˑʿ/ᴵˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ʽﹳ()Lˑʿ/ʻٴ;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public ʾˋ(Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ـˆ()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Lˑʿ/ʻٴ;->ʽʽ(Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lˑʿ/ʻٴ;->ʽʽ(Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final ʾᵎ(Landroid/view/View;Z)Lˑʿ/ᴵᵔ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ٴʼ:Lˑʿ/ᴵˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˑʿ/ʻٴ;->ʾᵎ(Landroid/view/View;Z)Lˑʿ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    :goto_0
    iget-object p2, p2, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lיـ/ˑﹳ;

    invoke-virtual {p2, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˑʿ/ᴵᵔ;

    return-object p1
.end method

.method public final ˆʾ(Landroid/view/ViewGroup;Z)V
    .locals 7

    .prologue
    invoke-virtual {p0, p2}, Lˑʿ/ʻٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lˑʿ/ʻٴ;->ﾞᴵ(Landroid/view/View;Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lˑʿ/ᴵᵔ;

    invoke-direct {v5, v4}, Lˑʿ/ᴵᵔ;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, Lˑʿ/ʻٴ;->ʼˎ(Lˑʿ/ᴵᵔ;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lˑʿ/ʻٴ;->ˑﹳ(Lˑʿ/ᴵᵔ;)V

    :goto_2
    iget-object v6, v5, Lˑʿ/ᴵᵔ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lˑʿ/ʻٴ;->ᵔᵢ(Lˑʿ/ᴵᵔ;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    invoke-static {v6, v4, v5}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    invoke-static {v6, v4, v5}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lˑʿ/ᴵᵔ;

    invoke-direct {v0, p1}, Lˑʿ/ᴵᵔ;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ʼˎ(Lˑʿ/ᴵᵔ;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ˑﹳ(Lˑʿ/ᴵᵔ;)V

    :goto_5
    iget-object v3, v0, Lˑʿ/ᴵᵔ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ᵔᵢ(Lˑʿ/ᴵᵔ;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    invoke-static {v3, p1, v0}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    invoke-static {v3, p1, v0}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public ˆﾞ(J)V
    .locals 0

    iput-wide p1, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    return-void
.end method

.method public ˈʿ(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public final ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    :cond_0
    iget-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lˑʿ/ʻٴ;->ᵔٴ:[Lˑʿ/יـ;

    if-nez v1, :cond_1

    new-array v1, v0, [Lˑʿ/יـ;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lˑʿ/ʻٴ;->ᵔٴ:[Lˑʿ/יـ;

    iget-object v3, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lˑʿ/יـ;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {p2, v4, p1, p3}, Lˑʿ/ʽﹳ;->ˑﹳ(Lˑʿ/יـ;Lˑʿ/ʻٴ;Z)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lˑʿ/ʻٴ;->ᵔٴ:[Lˑʿ/יـ;

    :cond_3
    return-void
.end method

.method public ˉʿ(Landroid/view/ViewGroup;Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    :cond_1
    iget-object p1, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public ˊʻ(Landroid/view/View;)V
    .locals 4

    .prologue
    iget-boolean p1, p0, Lˑʿ/ʻٴ;->ʼˈ:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v1, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    iput-object v1, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aput-object v3, p1, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    sget-object p1, Lˑʿ/ʽﹳ;->ʽﹳ:Lˊˋ/ⁱˊ;

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    iput-boolean v1, p0, Lˑʿ/ʻٴ;->ˊˋ:Z

    :cond_1
    return-void
.end method

.method public ˊˋ(J)V
    .locals 0

    iput-wide p1, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    return-void
.end method

.method public ˋᵔ()V
    .locals 0

    return-void
.end method

.method public final ˏי(Landroid/view/View;Z)Lˑʿ/ᴵᵔ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ٴʼ:Lˑʿ/ᴵˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˑʿ/ʻٴ;->ˏי(Landroid/view/View;Z)Lˑʿ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lˑʿ/ʻٴ;->ᵔי:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˑʿ/ʻٴ;->ˆﾞ:Ljava/util/ArrayList;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʿ/ᴵᵔ;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v3, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˆﾞ:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lˑʿ/ʻٴ;->ᵔי:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˑʿ/ᴵᵔ;

    return-object p1

    :cond_7
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public ˑٴ(Lᵎˉ/ⁱˊ;)V
    .locals 0

    .prologue
    if-nez p1, :cond_0

    sget-object p1, Lˑʿ/ʻٴ;->ˏᵢ:Lᵎˉ/ⁱˊ;

    iput-object p1, p0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    return-void

    :cond_0
    iput-object p1, p0, Lˑʿ/ʻٴ;->ˉـ:Lᵎˉ/ⁱˊ;

    return-void
.end method

.method public abstract ˑﹳ(Lˑʿ/ᴵᵔ;)V
.end method

.method public יـ(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    invoke-static {}, Lˑʿ/ʻٴ;->ʻٴ()Lיـ/ˑﹳ;

    move-result-object v0

    iget v1, v0, Lיـ/ﹳᐧ;->ʽʽ:I

    if-eqz p1, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    new-instance v2, Lיـ/ˑﹳ;

    invoke-direct {v2, v0}, Lיـ/ˑﹳ;-><init>(Lיـ/ˑﹳ;)V

    invoke-virtual {v0}, Lיـ/ﹳᐧ;->clear()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʿ/ˉˆ;

    iget-object v3, v0, Lˑʿ/ˉˆ;->ﹳٴ:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lˑʿ/ˉˆ;->ˈ:Landroid/view/WindowId;

    invoke-virtual {p1, v0}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public ـˆ()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ـˏ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const-string v1, ") "

    if-eqz p1, :cond_0

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v5, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_2

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    if-gtz v1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    :cond_3
    const-string v1, "tgts("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v1, :cond_5

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    if-lez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_7

    if-lez v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ٴʼ(Landroid/view/View;)V
    .locals 4

    .prologue
    iget-boolean p1, p0, Lˑʿ/ʻٴ;->ˊˋ:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lˑʿ/ʻٴ;->ʼˈ:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v2, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    iput-object v2, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    sget-object p1, Lˑʿ/ʽﹳ;->ʻٴ:Lˑʿ/ˏי;

    invoke-virtual {p0, p0, p1, v0}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    :cond_1
    iput-boolean v0, p0, Lˑʿ/ʻٴ;->ˊˋ:Z

    :cond_2
    return-void
.end method

.method public ٴᵢ()V
    .locals 10

    .prologue
    invoke-static {}, Lˑʿ/ʻٴ;->ʻٴ()Lיـ/ˑﹳ;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lˑʿ/ʻٴ;->ʿ:J

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʿ/ˉˆ;

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    iget-object v5, v5, Lˑʿ/ˉˆ;->ﾞᴵ:Landroid/animation/Animator;

    iget-wide v6, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    cmp-long v8, v6, v1

    if-ltz v8, :cond_0

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    iget-wide v6, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    cmp-long v8, v6, v1

    if-ltz v8, :cond_1

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1
    iget-object v6, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    iget-object v5, p0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p0, Lˑʿ/ʻٴ;->ʿ:J

    invoke-static {v4}, Lˑʿ/ʼᐧ;->ﹳٴ(Landroid/animation/Animator;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lˑʿ/ʻٴ;->ʿ:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final ٴﹶ(Z)V
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lיـ/ˑﹳ;

    invoke-virtual {p1}, Lיـ/ﹳᐧ;->clear()V

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lיـ/ʼˎ;

    invoke-virtual {p1}, Lיـ/ʼˎ;->ⁱˊ()V

    return-void

    :cond_0
    iget-object p1, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lיـ/ˑﹳ;

    invoke-virtual {p1}, Lיـ/ﹳᐧ;->clear()V

    iget-object p1, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lיـ/ʼˎ;

    invoke-virtual {p1}, Lיـ/ʼˎ;->ⁱˊ()V

    return-void
.end method

.method public final ᴵˊ(Landroid/view/View;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public final ᴵᵔ(Lˑʿ/ʽﹳ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    return-void
.end method

.method public ᵎˊ()V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ʼˈ()V

    invoke-static {}, Lˑʿ/ʻٴ;->ʻٴ()Lיـ/ˑﹳ;

    move-result-object v0

    iget-object v1, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ʼˈ()V

    if-eqz v4, :cond_0

    new-instance v5, Lˋᵔ/ˑٴ;

    invoke-direct {v5, p0, v0}, Lˋᵔ/ˑٴ;-><init>(Lˑʿ/ʻٴ;Lיـ/ˑﹳ;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v5, p0, Lˑʿ/ʻٴ;->ʽʽ:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    iget-wide v5, p0, Lˑʿ/ʻٴ;->ᴵˊ:J

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object v5, p0, Lˑʿ/ʻٴ;->ˈٴ:Landroid/animation/TimeInterpolator;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v5, Landroidx/leanback/widget/ᵔٴ;

    const/4 v6, 0x6

    invoke-direct {v5, v6, p0}, Landroidx/leanback/widget/ᵔٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ʼᐧ()V

    return-void
.end method

.method public ᵎⁱ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public ᵔʾ(Landroid/view/ViewGroup;Lˏˆ/ﹳٴ;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    invoke-static {}, Lˑʿ/ʻٴ;->ʻٴ()Lיـ/ˑﹳ;

    move-result-object v1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ʽﹳ()Lˑʿ/ʻٴ;

    move-result-object v4

    iget-object v4, v4, Lˑʿ/ʻٴ;->ʿᵢ:Lˑʿ/ﹳᐧ;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_e

    move-object/from16 v7, p4

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˑʿ/ᴵᵔ;

    move-object/from16 v9, p5

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lˑʿ/ᴵᵔ;

    if-eqz v8, :cond_1

    iget-object v12, v8, Lˑʿ/ᴵᵔ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v8, 0x0

    :cond_1
    if-eqz v10, :cond_2

    iget-object v12, v10, Lˑʿ/ᴵᵔ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v10, 0x0

    :cond_2
    if-nez v8, :cond_5

    if-nez v10, :cond_5

    :cond_3
    move-object/from16 v12, p1

    :cond_4
    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_6

    :cond_5
    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v0, v8, v10}, Lˑʿ/ʻٴ;->ʾˋ(Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_6
    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v8, v10}, Lˑʿ/ʻٴ;->ˉʿ(Landroid/view/ViewGroup;Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Landroid/animation/Animator;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v14, v0, Lˑʿ/ʻٴ;->ʾˋ:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v8, v10, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ـˆ()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    array-length v15, v10

    if-lez v15, :cond_a

    new-instance v15, Lˑʿ/ᴵᵔ;

    invoke-direct {v15, v8}, Lˑʿ/ᴵᵔ;-><init>(Landroid/view/View;)V

    move-object/from16 v5, p3

    iget-object v11, v5, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v11, Lיـ/ˑﹳ;

    invoke-virtual {v11, v8}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˑʿ/ᴵᵔ;

    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v11, :cond_7

    const/4 v3, 0x0

    :goto_2
    array-length v4, v10

    if-ge v3, v4, :cond_7

    aget-object v4, v10, v3

    move/from16 v18, v3

    iget-object v3, v11, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v15, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v5, p3

    goto :goto_2

    :cond_7
    iget v3, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    invoke-virtual {v1, v4}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v1, v5}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʿ/ˉˆ;

    iget-object v10, v5, Lˑʿ/ˉˆ;->ʽ:Lˑʿ/ᴵᵔ;

    if-eqz v10, :cond_8

    iget-object v10, v5, Lˑʿ/ˉˆ;->ﹳٴ:Landroid/view/View;

    if-ne v10, v8, :cond_8

    iget-object v10, v5, Lˑʿ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v5, v5, Lˑʿ/ˉˆ;->ʽ:Lˑʿ/ᴵᵔ;

    invoke-virtual {v5, v15}, Lˑʿ/ᴵᵔ;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move-object v11, v13

    goto :goto_4

    :cond_a
    move/from16 v16, v3

    move/from16 v17, v4

    move-object v11, v13

    const/4 v15, 0x0

    :goto_4
    move-object v13, v11

    move-object v11, v15

    goto :goto_5

    :cond_b
    move/from16 v16, v3

    move/from16 v17, v4

    iget-object v8, v8, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    const/4 v11, 0x0

    :goto_5
    if-eqz v13, :cond_d

    new-instance v3, Lˑʿ/ˉˆ;

    invoke-virtual {v12}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v8, v3, Lˑʿ/ˉˆ;->ﹳٴ:Landroid/view/View;

    iput-object v14, v3, Lˑʿ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iput-object v11, v3, Lˑʿ/ˉˆ;->ʽ:Lˑʿ/ᴵᵔ;

    iput-object v4, v3, Lˑʿ/ˉˆ;->ˈ:Landroid/view/WindowId;

    iput-object v0, v3, Lˑʿ/ˉˆ;->ˑﹳ:Lˑʿ/ʻٴ;

    iput-object v13, v3, Lˑʿ/ˉˆ;->ﾞᴵ:Landroid/animation/Animator;

    if-eqz v17, :cond_c

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v13, v4

    :cond_c
    invoke-virtual {v1, v13, v3}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_f

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʿ/ˉˆ;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v6, v4

    const-wide v8, 0x7fffffffffffffffL

    sub-long/2addr v6, v8

    iget-object v4, v3, Lˑʿ/ˉˆ;->ﾞᴵ:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v3, v3, Lˑʿ/ˉˆ;->ﾞᴵ:Landroid/animation/Animator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method public ᵔי(JJ)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lˑʿ/ʻٴ;->ʿ:J

    cmp-long v5, v1, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, p3, v8

    if-gez v10, :cond_1

    cmp-long v11, v1, v8

    if-gez v11, :cond_2

    :cond_1
    cmp-long v11, p3, v3

    if-lez v11, :cond_3

    cmp-long v11, v1, v3

    if-gtz v11, :cond_3

    :cond_2
    iput-boolean v6, v0, Lˑʿ/ʻٴ;->ʼˈ:Z

    sget-object v11, Lˑʿ/ʽﹳ;->ﹳᐧ:Lˊˋ/ⁱˊ;

    invoke-virtual {v0, v0, v11, v5}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    :cond_3
    iget-object v11, v0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/animation/Animator;

    sget-object v13, Lˑʿ/ʻٴ;->ᐧﾞ:[Landroid/animation/Animator;

    iput-object v13, v0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    :goto_1
    if-ge v6, v12, :cond_4

    aget-object v13, v11, v6

    const/4 v14, 0x0

    aput-object v14, v11, v6

    invoke-static {v13}, Lˑʿ/ʼᐧ;->ﹳٴ(Landroid/animation/Animator;)J

    move-result-wide v14

    move-wide/from16 v16, v3

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v13, v3, v4}, Lˑʿ/ʼᐧ;->ⁱˊ(Landroid/animation/Animator;J)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v3

    iput-object v11, v0, Lˑʿ/ʻٴ;->ˑٴ:[Landroid/animation/Animator;

    cmp-long v3, v1, v16

    if-lez v3, :cond_5

    cmp-long v4, p3, v16

    if-lez v4, :cond_6

    :cond_5
    cmp-long v1, v1, v8

    if-gez v1, :cond_8

    if-ltz v10, :cond_8

    :cond_6
    if-lez v3, :cond_7

    iput-boolean v7, v0, Lˑʿ/ʻٴ;->ʼˈ:Z

    :cond_7
    sget-object v1, Lˑʿ/ʽﹳ;->יـ:Lˊˋ/ⁱˊ;

    invoke-virtual {v0, v0, v1, v5}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    :cond_8
    return-void
.end method

.method public ᵔٴ(Lʽٴ/ˈ;)V
    .locals 0

    iput-object p1, p0, Lˑʿ/ʻٴ;->ᴵˑ:Lʽٴ/ˈ;

    return-void
.end method

.method public ᵔᵢ(Lˑʿ/ᴵᵔ;)V
    .locals 0

    return-void
.end method

.method public final ᵔﹳ(Landroid/view/View;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ٴᵢ:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v0, p0, Lˑʿ/ʻٴ;->ٴᵢ:Ljava/util/ArrayList;

    return-void
.end method

.method public ᵢˏ()Z
    .locals 1

    instance-of v0, p0, Lˑʿ/ˑﹳ;

    return v0
.end method

.method public ⁱˊ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ﹳٴ(Lˑʿ/יـ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ﾞʻ()Lˑʿ/ʻٴ;
    .locals 3

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʿ/ʻٴ;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    new-instance v1, Lˏˆ/ﹳٴ;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v1, v0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    new-instance v1, Lˏˆ/ﹳٴ;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v1, v0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    const/4 v1, 0x0

    iput-object v1, v0, Lˑʿ/ʻٴ;->ᵔי:Ljava/util/ArrayList;

    iput-object v1, v0, Lˑʿ/ʻٴ;->ˆﾞ:Ljava/util/ArrayList;

    iput-object v1, v0, Lˑʿ/ʻٴ;->ʿᵢ:Lˑʿ/ﹳᐧ;

    iput-object p0, v0, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    iput-object v1, v0, Lˑʿ/ʻٴ;->ﹳـ:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ﾞᴵ(Landroid/view/View;Z)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lˑʿ/ᴵᵔ;

    invoke-direct {v0, p1}, Lˑʿ/ᴵᵔ;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ʼˎ(Lˑʿ/ᴵᵔ;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ˑﹳ(Lˑʿ/ᴵᵔ;)V

    :goto_0
    iget-object v1, v0, Lˑʿ/ᴵᵔ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lˑʿ/ʻٴ;->ᵔᵢ(Lˑʿ/ᴵᵔ;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lˑʿ/ʻٴ;->ˉٴ:Lˏˆ/ﹳٴ;

    invoke-static {v1, p1, v0}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lˑʿ/ʻٴ;->ᵎⁱ:Lˏˆ/ﹳٴ;

    invoke-static {v1, p1, v0}, Lˑʿ/ʻٴ;->ˈ(Lˏˆ/ﹳٴ;Landroid/view/View;Lˑʿ/ᴵᵔ;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lˑʿ/ʻٴ;->ٴᵢ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lˑʿ/ʻٴ;->ﾞᴵ(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
