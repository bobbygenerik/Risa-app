.class public final Lˑʼ/ʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʻٴ:Lˑʼ/ˈʿ;

.field public ʼʼ:Lʼ/ᵎﹶ;

.field public ʼˎ:Z

.field public final ʼᐧ:Lˑʼ/ᵎˊ;

.field public final ʽ:Lˏˆ/ﹳٴ;

.field public final ʽʽ:Lٴﾞ/ˆʾ;

.field public final ʽﹳ:Lˑʼ/ᵔי;

.field public ʾˋ:Lˑʼ/ᴵᵔ;

.field public ʾᵎ:Lˑʼ/ٴᵢ;

.field public final ˆʾ:Lˑʼ/ᵔٴ;

.field public ˆﾞ:Ljava/util/ArrayList;

.field public ˈ:Ljava/util/ArrayList;

.field public ˈʿ:Ljava/util/ArrayList;

.field public ˈٴ:Lˑﹳ/ˈ;

.field public final ˉʿ:Ljava/util/Map;

.field public final ˉˆ:Ljava/util/ArrayList;

.field public ˉٴ:Z

.field public ˊʻ:Lˑﹳ/ˈ;

.field public final ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

.field public final ˏי:Lˑʼ/ᵔי;

.field public ˑٴ:Lˑʼ/ᵎᵔ;

.field public ˑﹳ:Ljava/util/ArrayList;

.field public final יـ:Lˑʼ/ᵔי;

.field public ـˆ:I

.field public ٴʼ:Z

.field public ٴᵢ:Ljava/util/ArrayDeque;

.field public final ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ᴵˊ:Lˑʼ/ˑٴ;

.field public ᴵᵔ:Lˑﹳ/ˈ;

.field public ᵎˊ:Z

.field public ᵎⁱ:Z

.field public ᵎﹶ:Lʽ/ʽﹳ;

.field public final ᵔʾ:Ljava/util/Map;

.field public ᵔי:Z

.field public ᵔٴ:Ljava/util/ArrayList;

.field public ᵔᵢ:Lˑʼ/ﹳٴ;

.field public final ᵔﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public ᵢˏ:Lˑʼ/ᴵᵔ;

.field public ⁱˊ:Z

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public final ﹳᐧ:Lˑʼ/ᵔי;

.field public final ﾞʻ:Ljava/util/Map;

.field public final ﾞᴵ:Lˑʼ/ٴʼ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v0, Lˏˆ/ﹳٴ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    new-instance v0, Lˑʼ/ٴʼ;

    invoke-direct {v0, p0}, Lˑʼ/ٴʼ;-><init>(Lˑʼ/ʿ;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ﾞᴵ:Lˑʼ/ٴʼ;

    const/4 v0, 0x0

    iput-object v0, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ʿ;->ʼˎ:Z

    new-instance v0, Lˑʼ/ᵔٴ;

    invoke-direct {v0, p0}, Lˑʼ/ᵔٴ;-><init>(Lˑʼ/ʿ;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ʿ;->ﾞʻ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ʿ;->ᵔʾ:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    new-instance v0, Lˑʼ/ᵎˊ;

    invoke-direct {v0, p0}, Lˑʼ/ᵎˊ;-><init>(Lˑʼ/ʿ;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ʼᐧ:Lˑʼ/ᵎˊ;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ᵔﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lˑʼ/ᵔי;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˑʼ/ᵔי;-><init>(Lˑʼ/ʿ;I)V

    iput-object v0, p0, Lˑʼ/ʿ;->ﹳᐧ:Lˑʼ/ᵔי;

    new-instance v0, Lˑʼ/ᵔי;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lˑʼ/ᵔי;-><init>(Lˑʼ/ʿ;I)V

    iput-object v0, p0, Lˑʼ/ʿ;->יـ:Lˑʼ/ᵔי;

    new-instance v0, Lˑʼ/ᵔי;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lˑʼ/ᵔי;-><init>(Lˑʼ/ʿ;I)V

    iput-object v0, p0, Lˑʼ/ʿ;->ˏי:Lˑʼ/ᵔי;

    new-instance v0, Lˑʼ/ᵔי;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lˑʼ/ᵔי;-><init>(Lˑʼ/ʿ;I)V

    iput-object v0, p0, Lˑʼ/ʿ;->ʽﹳ:Lˑʼ/ᵔי;

    new-instance v0, Lˑʼ/ˈʿ;

    invoke-direct {v0, p0}, Lˑʼ/ˈʿ;-><init>(Lˑʼ/ʿ;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ʻٴ:Lˑʼ/ˈʿ;

    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ʿ;->ـˆ:I

    new-instance v0, Lˑʼ/ˑٴ;

    invoke-direct {v0, p0}, Lˑʼ/ˑٴ;-><init>(Lˑʼ/ʿ;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ᴵˊ:Lˑʼ/ˑٴ;

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    iput-object v0, p0, Lˑʼ/ʿ;->ʽʽ:Lٴﾞ/ˆʾ;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lˑʼ/ʿ;->ٴᵢ:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˑʼ/ʿ;->ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

    return-void
.end method

.method public static ʻˋ(Lˑʼ/ᴵᵔ;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_0
    iget-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    iget-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    :cond_1
    return-void
.end method

.method public static ˈʿ(Lˑʼ/ᴵᵔ;)Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iget-object p0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {p0}, Lˏˆ/ﹳٴ;->ـˆ()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static ˊˋ(Lˑʼ/ᴵᵔ;)Z
    .locals 2

    .prologue
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v1, v0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    invoke-static {p0}, Lˑʼ/ʿ;->ˊˋ(Lˑʼ/ᴵᵔ;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static ˋᵔ(Lˑʼ/ᴵᵔ;)Z
    .locals 1

    .prologue
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lˑʼ/ᴵᵔ;->ˏᵢ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    invoke-static {p0}, Lˑʼ/ʿ;->ˋᵔ(Lˑʼ/ᴵᵔ;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static ٴᵢ(Lˑʼ/ﹳٴ;)Ljava/util/HashSet;
    .locals 4

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ʻᵎ;

    iget-object v2, v2, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static ᵔٴ(I)Z
    .locals 1

    .prologue
    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻٴ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˑʼ/ʿ;->ᵔי:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ʿ;->ᵔי:Z

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˑʼ()V

    :cond_0
    return-void
.end method

.method public final ʻᵎ(Lˑʼ/ᴵᵔ;Z)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴʼ(Lˑʼ/ᴵᵔ;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final ʼʼ(Lˑʼ/ˈⁱ;Z)V
    .locals 2

    .prologue
    if-nez p2, :cond_3

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lˑʼ/ʿ;->ᵎˊ:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lˑʼ/ʿ;->ʼˈ()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᴵʼ()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ʼˈ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˑʼ/ʿ;->ᵎⁱ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lˑʼ/ʿ;->ٴʼ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ʼˎ(ZLandroid/content/res/Configuration;)V
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴﹳ(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lˑʼ/ᴵᵔ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lˑʼ/ʿ;->ʼˎ(ZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ʼᐧ()Z
    .locals 5

    .prologue
    iget v0, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v3}, Lˑʼ/ʿ;->ʼᐧ()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final ʽ(Lˑʼ/ᴵᵔ;)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    iget-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    iget-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, p1}, Lˏˆ/ﹳٴ;->ʼˎ(Lˑʼ/ᴵᵔ;)V

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    invoke-static {p1}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_2
    return-void
.end method

.method public final ʽʽ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ﹳٴ;

    iget-boolean v5, v5, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    iget-object v6, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    iget-object v7, v0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v7}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v9, v4, :cond_13

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lˑʼ/ﹳٴ;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    iget-object v11, v13, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_c

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lˑʼ/ʻᵎ;

    move/from16 v17, v5

    iget v5, v15, Lˑʼ/ʻᵎ;->ﹳٴ:I

    if-eq v5, v12, :cond_b

    const/4 v12, 0x2

    move/from16 v19, v9

    const/16 v9, 0x9

    if-eq v5, v12, :cond_5

    const/4 v12, 0x3

    if-eq v5, v12, :cond_4

    const/4 v12, 0x6

    if-eq v5, v12, :cond_4

    const/4 v12, 0x7

    if-eq v5, v12, :cond_3

    const/16 v12, 0x8

    if-eq v5, v12, :cond_1

    goto :goto_3

    :cond_1
    new-instance v5, Lˑʼ/ʻᵎ;

    const/4 v12, 0x0

    invoke-direct {v5, v9, v6, v12}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;I)V

    invoke-virtual {v11, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v15, Lˑʼ/ʻᵎ;->ʽ:Z

    add-int/lit8 v8, v8, 0x1

    iget-object v5, v15, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    move-object v6, v5

    :cond_2
    :goto_3
    move/from16 v22, v10

    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_a

    :cond_3
    const/4 v9, 0x1

    :goto_5
    move/from16 v22, v10

    goto/16 :goto_9

    :cond_4
    iget-object v5, v15, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v15, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-ne v5, v6, :cond_2

    new-instance v6, Lˑʼ/ʻᵎ;

    invoke-direct {v6, v9, v5}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    invoke-virtual {v11, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v22, v10

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    iget-object v5, v15, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    iget v12, v5, Lˑʼ/ᴵᵔ;->ʿ:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v18, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v9, v20

    const/16 v20, 0x0

    :goto_6
    if-ltz v9, :cond_9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v9

    move-object/from16 v9, v22

    check-cast v9, Lˑʼ/ᴵᵔ;

    move/from16 v22, v10

    iget v10, v9, Lˑʼ/ᴵᵔ;->ʿ:I

    if-ne v10, v12, :cond_8

    if-ne v9, v5, :cond_6

    move/from16 v21, v12

    const/4 v9, 0x1

    const/16 v20, 0x1

    goto :goto_8

    :cond_6
    if-ne v9, v6, :cond_7

    new-instance v6, Lˑʼ/ʻᵎ;

    move/from16 v21, v12

    const/4 v10, 0x0

    const/16 v12, 0x9

    invoke-direct {v6, v12, v9, v10}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;I)V

    invoke-virtual {v11, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    move/from16 v21, v12

    const/4 v10, 0x0

    const/16 v12, 0x9

    :goto_7
    new-instance v12, Lˑʼ/ʻᵎ;

    move-object/from16 v24, v6

    const/4 v6, 0x3

    invoke-direct {v12, v6, v9, v10}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;I)V

    iget v6, v15, Lˑʼ/ʻᵎ;->ˈ:I

    iput v6, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v6, v15, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iput v6, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v6, v15, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iput v6, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v6, v15, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    iput v6, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v11, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    add-int/2addr v8, v9

    move-object/from16 v6, v24

    goto :goto_8

    :cond_8
    move/from16 v21, v12

    const/4 v9, 0x1

    :goto_8
    add-int/lit8 v10, v23, -0x1

    move v9, v10

    move/from16 v12, v21

    move/from16 v10, v22

    goto :goto_6

    :cond_9
    move/from16 v22, v10

    const/4 v9, 0x1

    if-eqz v20, :cond_a

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    :cond_a
    iput v9, v15, Lˑʼ/ʻᵎ;->ﹳٴ:I

    iput-boolean v9, v15, Lˑʼ/ʻᵎ;->ʽ:Z

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move/from16 v19, v9

    move v9, v12

    goto/16 :goto_5

    :goto_9
    iget-object v5, v15, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v8, v9

    move v12, v9

    move/from16 v5, v17

    move/from16 v9, v19

    move/from16 v10, v22

    goto/16 :goto_2

    :cond_c
    move/from16 v17, v5

    move/from16 v19, v9

    move/from16 v22, v10

    goto :goto_d

    :cond_d
    move/from16 v17, v5

    move/from16 v19, v9

    move/from16 v22, v10

    move v9, v12

    iget-object v5, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    iget-object v8, v13, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    :goto_b
    if-ltz v10, :cond_10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˑʼ/ʻᵎ;

    iget v12, v11, Lˑʼ/ʻᵎ;->ﹳٴ:I

    if-eq v12, v9, :cond_f

    const/4 v9, 0x3

    if-eq v12, v9, :cond_e

    packed-switch v12, :pswitch_data_0

    goto :goto_c

    :pswitch_0
    iget-object v12, v11, Lˑʼ/ʻᵎ;->ᵔᵢ:Landroidx/lifecycle/ᵔʾ;

    iput-object v12, v11, Lˑʼ/ʻᵎ;->ʼˎ:Landroidx/lifecycle/ᵔʾ;

    goto :goto_c

    :pswitch_1
    iget-object v6, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    goto :goto_c

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_c

    :cond_e
    :pswitch_3
    iget-object v11, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    const/4 v9, 0x3

    :pswitch_4
    iget-object v11, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v10, v10, -0x1

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    :goto_d
    if-nez v22, :cond_12

    iget-boolean v5, v13, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-eqz v5, :cond_11

    goto :goto_e

    :cond_11
    const/4 v10, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v10, 0x1

    :goto_f
    add-int/lit8 v9, v19, 0x1

    move/from16 v5, v17

    goto/16 :goto_1

    :cond_13
    move/from16 v17, v5

    move/from16 v22, v10

    iget-object v5, v0, Lˑʼ/ʿ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v17, :cond_16

    iget v5, v0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v9, 0x1

    if-lt v5, v9, :cond_16

    move v5, v3

    :goto_10
    if-ge v5, v4, :cond_16

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑʼ/ﹳٴ;

    iget-object v6, v6, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_14
    :goto_11
    if-ge v9, v8, :cond_15

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lˑʼ/ʻᵎ;

    iget-object v10, v10, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v10, :cond_14

    iget-object v11, v10, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v11, :cond_14

    invoke-virtual {v0, v10}, Lˑʼ/ʿ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    move-result-object v10

    invoke-virtual {v7, v10}, Lˏˆ/ﹳٴ;->ʾˋ(Lˑʼ/ᴵʼ;)V

    goto :goto_11

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_16
    move v5, v3

    :goto_12
    const/4 v6, -0x1

    if-ge v5, v4, :cond_22

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˑʼ/ﹳٴ;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v9, "Unknown cmd: "

    if-eqz v8, :cond_1e

    invoke-virtual {v7, v6}, Lˑʼ/ﹳٴ;->ˈ(I)V

    iget-object v6, v7, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    iget-object v8, v7, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_13
    if-ltz v10, :cond_1d

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lˑʼ/ʻᵎ;

    iget-object v13, v12, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v13, :cond_1c

    iget-object v14, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v14, :cond_17

    goto :goto_14

    :cond_17
    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v14

    iput-boolean v11, v14, Lˑʼ/ᴵˊ;->ﹳٴ:Z

    :goto_14
    iget v11, v7, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    const/16 v14, 0x2002

    const/16 v15, 0x1001

    if-eq v11, v15, :cond_1a

    if-eq v11, v14, :cond_19

    const/16 v14, 0x1004

    const/16 v15, 0x2005

    if-eq v11, v15, :cond_1a

    const/16 v15, 0x1003

    if-eq v11, v15, :cond_19

    if-eq v11, v14, :cond_18

    const/4 v14, 0x0

    goto :goto_15

    :cond_18
    const/16 v14, 0x2005

    goto :goto_15

    :cond_19
    move v14, v15

    :cond_1a
    :goto_15
    iget-object v11, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v11, :cond_1b

    if-nez v14, :cond_1b

    goto :goto_16

    :cond_1b
    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    iget-object v11, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    iput v14, v11, Lˑʼ/ᴵˊ;->ﾞᴵ:I

    :goto_16
    iget-object v11, v7, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    iget-object v14, v7, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    iget-object v15, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    iput-object v11, v15, Lˑʼ/ᴵˊ;->ᵎﹶ:Ljava/util/ArrayList;

    iput-object v14, v15, Lˑʼ/ᴵˊ;->ᵔᵢ:Ljava/util/ArrayList;

    :cond_1c
    iget v11, v12, Lˑʼ/ʻᵎ;->ﹳٴ:I

    packed-switch v11, :pswitch_data_1

    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v12, Lˑʼ/ʻᵎ;->ﹳٴ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    iget-object v11, v13, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    iput-object v11, v12, Lˑʼ/ʻᵎ;->ʼˎ:Landroidx/lifecycle/ᵔʾ;

    iget-object v11, v12, Lˑʼ/ʻᵎ;->ᵔᵢ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v6, v13, v11}, Lˑʼ/ʿ;->ˈˏ(Lˑʼ/ᴵᵔ;Landroidx/lifecycle/ᵔʾ;)V

    :goto_17
    const/4 v11, 0x1

    goto/16 :goto_18

    :pswitch_7
    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ﹶᐧ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_8
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lˑʼ/ʿ;->ﹶᐧ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_9
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v11, 0x1

    invoke-virtual {v6, v13, v11}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ᵔᵢ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_a
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ʽ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_b
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v11, 0x1

    invoke-virtual {v6, v13, v11}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ˆﾞ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_c
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lˑʼ/ʿ;->ʻˋ(Lˑʼ/ᴵᵔ;)V

    goto :goto_17

    :pswitch_d
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    goto :goto_17

    :pswitch_e
    iget v11, v12, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v12, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v12, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v12, v12, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v11, v14, v15, v12}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v11, 0x1

    invoke-virtual {v6, v13, v11}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ᵎᵔ(Lˑʼ/ᴵᵔ;)V

    :goto_18
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_13

    :cond_1d
    move/from16 v16, v5

    goto/16 :goto_1e

    :cond_1e
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lˑʼ/ﹳٴ;->ˈ(I)V

    iget-object v6, v7, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    iget-object v8, v7, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v10, :cond_1d

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˑʼ/ʻᵎ;

    iget-object v13, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v13, :cond_21

    iget-object v14, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v14, :cond_1f

    goto :goto_1a

    :cond_1f
    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lˑʼ/ᴵˊ;->ﹳٴ:Z

    :goto_1a
    iget v14, v7, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    iget-object v15, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v15, :cond_20

    if-nez v14, :cond_20

    goto :goto_1b

    :cond_20
    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    iget-object v15, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    iput v14, v15, Lˑʼ/ᴵˊ;->ﾞᴵ:I

    :goto_1b
    iget-object v14, v7, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    iget-object v15, v7, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move/from16 v16, v5

    iget-object v5, v13, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    iput-object v14, v5, Lˑʼ/ᴵˊ;->ᵎﹶ:Ljava/util/ArrayList;

    iput-object v15, v5, Lˑʼ/ᴵˊ;->ᵔᵢ:Ljava/util/ArrayList;

    goto :goto_1c

    :cond_21
    move/from16 v16, v5

    :goto_1c
    iget v5, v11, Lˑʼ/ʻᵎ;->ﹳٴ:I

    packed-switch v5, :pswitch_data_2

    :pswitch_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lˑʼ/ʻᵎ;->ﹳٴ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    iget-object v5, v13, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    iput-object v5, v11, Lˑʼ/ʻᵎ;->ᵔᵢ:Landroidx/lifecycle/ᵔʾ;

    iget-object v5, v11, Lˑʼ/ʻᵎ;->ʼˎ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v6, v13, v5}, Lˑʼ/ʿ;->ˈˏ(Lˑʼ/ᴵᵔ;Landroidx/lifecycle/ᵔʾ;)V

    goto :goto_1d

    :pswitch_11
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lˑʼ/ʿ;->ﹶᐧ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_12
    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ﹶᐧ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_13
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ʽ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_14
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ᵔᵢ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_15
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-static {v13}, Lˑʼ/ʿ;->ʻˋ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_16
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ˆﾞ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_17
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ᵎᵔ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1d

    :pswitch_18
    iget v5, v11, Lˑʼ/ʻᵎ;->ˈ:I

    iget v14, v11, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v15, v11, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v11, v11, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-virtual {v13, v5, v14, v15, v11}, Lˑʼ/ᴵᵔ;->ٴᴵ(IIII)V

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Lˑʼ/ʿ;->ʻᵎ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v6, v13}, Lˑʼ/ʿ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    :goto_1d
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto/16 :goto_19

    :goto_1e
    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_12

    :cond_22
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v7, v0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    if-eqz v22, :cond_27

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_27

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_1f
    if-ge v12, v9, :cond_23

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v12, 0x1

    check-cast v10, Lˑʼ/ﹳٴ;

    invoke-static {v10}, Lˑʼ/ʿ;->ٴᵢ(Lˑʼ/ﹳٴ;)Ljava/util/HashSet;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1f

    :cond_23
    iget-object v9, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-nez v9, :cond_27

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :cond_24
    if-ge v12, v9, :cond_25

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v12, 0x1

    check-cast v10, Lˉˑ/ʽ;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lˑʼ/ᴵᵔ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_20

    :cond_25
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :cond_26
    if-ge v12, v9, :cond_27

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v12, 0x1

    check-cast v10, Lˉˑ/ʽ;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_21
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lˑʼ/ᴵᵔ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_21

    :cond_27
    move v8, v3

    :goto_22
    if-ge v8, v4, :cond_2c

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˑʼ/ﹳٴ;

    if-eqz v5, :cond_29

    iget-object v10, v9, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_23
    if-ltz v10, :cond_2b

    iget-object v11, v9, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˑʼ/ʻᵎ;

    iget-object v11, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v11, :cond_28

    invoke-virtual {v0, v11}, Lˑʼ/ʿ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    move-result-object v11

    invoke-virtual {v11}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    :cond_28
    add-int/lit8 v10, v10, -0x1

    goto :goto_23

    :cond_29
    iget-object v9, v9, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :cond_2a
    :goto_24
    if-ge v12, v10, :cond_2b

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    check-cast v11, Lˑʼ/ʻᵎ;

    iget-object v11, v11, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v11, :cond_2a

    invoke-virtual {v0, v11}, Lˑʼ/ʿ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    move-result-object v11

    invoke-virtual {v11}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    goto :goto_24

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_2c
    iget v8, v0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v11, 0x1

    invoke-virtual {v0, v8, v11}, Lˑʼ/ʿ;->ـˏ(IZ)V

    invoke-virtual {v0, v1, v3, v4}, Lˑʼ/ʿ;->ﾞᴵ(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˑʼ/ᵔﹳ;

    iput-boolean v5, v9, Lˑʼ/ᵔﹳ;->ˑﹳ:Z

    invoke-virtual {v9}, Lˑʼ/ᵔﹳ;->ٴﹶ()V

    invoke-virtual {v9}, Lˑʼ/ᵔﹳ;->ˑﹳ()V

    goto :goto_25

    :cond_2d
    :goto_26
    if-ge v3, v4, :cond_31

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ﹳٴ;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2e

    iget v8, v5, Lˑʼ/ﹳٴ;->ˏי:I

    if-ltz v8, :cond_2e

    iput v6, v5, Lˑʼ/ﹳٴ;->ˏי:I

    :cond_2e
    iget-object v8, v5, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    if-eqz v8, :cond_30

    const/4 v12, 0x0

    :goto_27
    iget-object v8, v5, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v12, v8, :cond_2f

    iget-object v8, v5, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_2f
    const/4 v11, 0x0

    iput-object v11, v5, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    goto :goto_28

    :cond_30
    const/4 v11, 0x0

    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_31
    if-eqz v22, :cond_34

    const/4 v12, 0x0

    :goto_29
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_34

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˉˑ/ʽ;

    iget-object v1, v1, Lˉˑ/ʽ;->ﹳٴ:Lar/tvplayer/tv/ui/MainActivity;

    sget v2, Lar/tvplayer/tv/ui/MainActivity;->ʻˋ:I

    invoke-virtual {v1}, Lar/tvplayer/tv/ui/MainActivity;->ـˏ()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-boolean v2, v1, Lar/tvplayer/tv/ui/MainActivity;->ˊᵔ:Z

    if-eqz v2, :cond_32

    const/4 v15, 0x0

    iput-boolean v15, v1, Lar/tvplayer/tv/ui/MainActivity;->ˊᵔ:Z

    sget-object v2, Lˉˑ/ﾞᴵ;->ᴵˊ:Lˉˑ/ﾞᴵ;

    const/4 v3, 0x4

    invoke-static {v1, v2, v15, v3}, Lar/tvplayer/tv/ui/MainActivity;->ˈˏ(Lar/tvplayer/tv/ui/MainActivity;Lˉˑ/ﾞᴵ;ZI)V

    invoke-virtual {v1}, Lar/tvplayer/tv/ui/MainActivity;->ᵎⁱ()Lˏᵎ/ﹳٴ;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v3, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v3, :cond_33

    new-instance v4, Lˈˊ/ᵔﹳ;

    const/16 v5, 0x18

    invoke-direct {v4, v2, v5, v1}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_32
    const/4 v15, 0x0

    :cond_33
    :goto_2a
    invoke-virtual {v1}, Lar/tvplayer/tv/ui/MainActivity;->ﹶᐧ()V

    invoke-virtual {v1}, Lar/tvplayer/tv/ui/MainActivity;->onUserInteraction()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    :cond_34
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final ʽﹳ(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    iget-object v2, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v2, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵʼ;

    if-eqz v3, :cond_0

    iput p1, v3, Lˑʼ/ᴵʼ;->ˑﹳ:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lˑʼ/ʿ;->ـˏ(IZ)V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˑﹳ()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ᵔﹳ;

    invoke-virtual {v2}, Lˑʼ/ᵔﹳ;->ʼˎ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    throw p1
.end method

.method public final ʾˋ(Z)Z
    .locals 9

    .prologue
    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ᵢˏ(Z)V

    iget-boolean p1, p0, Lˑʼ/ʿ;->ʼˎ:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lˑʼ/ﹳٴ;->יـ:Z

    invoke-virtual {p1}, Lˑʼ/ﹳٴ;->ˑﹳ()V

    const/4 p1, 0x3

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reversing mTransitioningOp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as part of execPendingActions for actions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_0
    iget-object p1, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {p1, v1, v1}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    iget-object p1, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object p1, p1, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ʻᵎ;

    iget-object v4, v4, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_1

    iput-boolean v1, v4, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    :cond_3
    move p1, v1

    :goto_1
    iget-object v2, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v3, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    iget-object v4, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :try_start_1
    iget-object v5, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_5

    iget-object v8, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˑʼ/ˈⁱ;

    invoke-interface {v8, v2, v3}, Lˑʼ/ˈⁱ;->ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_5
    :try_start_2
    iget-object v2, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v2, v2, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    iget-object v3, p0, Lˑʼ/ʿ;->ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v7, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    :try_start_3
    iget-object v2, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v3, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Lˑʼ/ʿ;->ᐧﾞ(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    throw p1

    :cond_6
    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎʻ()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʻٴ()V

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1

    :goto_4
    :try_start_4
    iget-object v0, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    iget-object v1, p0, Lˑʼ/ʿ;->ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final ʾᵎ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˑʼ/ʿ;->ˑﹳ()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᵔﹳ;

    invoke-virtual {v1}, Lˑʼ/ᵔﹳ;->ʼˎ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʿ(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ᵢˏ(Z)V

    iget-object v1, p0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v1

    invoke-virtual {v1}, Lˑʼ/ʿ;->ˉـ()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, p1, p2}, Lˑʼ/ʿ;->ʿᵢ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    :try_start_0
    iget-object p2, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v0, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Lˑʼ/ʿ;->ᐧﾞ(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎʻ()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʻٴ()V

    iget-object p2, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object p2, p2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return p1
.end method

.method public final ʿᵢ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iget-object v2, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    if-gez p3, :cond_3

    if-eqz p4, :cond_2

    move v3, v1

    goto :goto_4

    :cond_2
    iget-object p3, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v3, p3, -0x1

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ﹳٴ;

    if-ltz p3, :cond_4

    iget v4, v4, Lˑʼ/ﹳٴ;->ˏי:I

    if-ne p3, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    move v3, v2

    :goto_3
    if-lez v3, :cond_9

    iget-object p4, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lˑʼ/ﹳٴ;

    if-ltz p3, :cond_9

    iget p4, p4, Lˑʼ/ﹳٴ;->ˏי:I

    if-ne p3, p4, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v2, 0x1

    :cond_9
    :goto_4
    if-gez v3, :cond_a

    return v1

    :cond_a
    iget-object p3, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-lt p3, v3, :cond_b

    iget-object p4, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lˑʼ/ﹳٴ;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_b
    return v0
.end method

.method public final ˆʾ()Z
    .locals 5

    .prologue
    iget v0, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v3}, Lˑʼ/ʿ;->ˆʾ()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final ˆﾞ(Lˑʼ/ᴵᵔ;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_0
    iget-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    iget-boolean v1, p1, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ﹳﹳ(Lˑʼ/ᴵᵔ;)V

    :cond_1
    return-void
.end method

.method public final ˈ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    iget-object v0, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final ˈˏ(Lˑʼ/ᴵᵔ;Landroidx/lifecycle/ᵔʾ;)V
    .locals 2

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ˈٴ(I)Lˑʼ/ᴵᵔ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_0

    iget v4, v3, Lˑʼ/ᴵᵔ;->ˉـ:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵʼ;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget v2, v1, Lˑʼ/ᴵᵔ;->ˉـ:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ˈⁱ()V
    .locals 3

    new-instance v0, Lˑʼ/ᴵˑ;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lˑʼ/ᴵˑ;-><init>(Lˑʼ/ʿ;II)V

    invoke-virtual {p0, v0, v2}, Lˑʼ/ʿ;->ʼʼ(Lˑʼ/ˈⁱ;Z)V

    return-void
.end method

.method public final ˉʿ(Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴﹳ(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz p1, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1, v2}, Lˑʼ/ʿ;->ˉʿ(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ˉˆ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ـˆ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ﹶᐧ()Z

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v3}, Lˑʼ/ʿ;->ˉˆ()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˉـ()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lˑʼ/ʿ;->ʿ(II)Z

    move-result v0

    return v0
.end method

.method public final ˉٴ(I)Lˑʼ/ﹳٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˑʼ/ﹳٴ;

    return-object p1
.end method

.method public final ˊʻ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˑʼ/ʿ;->ˑﹳ()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᵔﹳ;

    iget-boolean v2, v1, Lˑʼ/ᵔﹳ;->ﾞᴵ:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    const-string v3, "SpecialEffectsController: Forcing postponed operations"

    nop

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v1, Lˑʼ/ᵔﹳ;->ﾞᴵ:Z

    invoke-virtual {v1}, Lˑʼ/ᵔﹳ;->ˑﹳ()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ˊᵔ(Ljava/lang/String;)V
    .locals 4

    .prologue
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v1, p0, Lˑʼ/ʿ;->ᵔʾ:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ﹳـ;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lˑʼ/ﹳـ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iget-object v2, v2, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v3, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, v0}, Lˑʼ/ﹳـ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x2

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting fragment result with key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and result "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_1
    return-void
.end method

.method public final ˏי()Z
    .locals 6

    .prologue
    iget v0, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lˑʼ/ʿ;->ˋᵔ(Lˑʼ/ᴵᵔ;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v5, :cond_2

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v4}, Lˑʼ/ʿ;->ˏי()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final ˏᵢ()Landroid/os/Bundle;
    .locals 15

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˊʻ()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʾᵎ()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    iput-boolean v1, p0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iget-object v2, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ᴵʼ;

    if-eqz v4, :cond_0

    iget-object v6, v4, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v7, v6, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v4}, Lˑʼ/ᴵʼ;->ˉˆ()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lˏˆ/ﹳٴ;->ˋᵔ(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v4, v6, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Saved state of "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "FragmentManager"

    const-string v2, "saveAllState: no fragments!"

    nop

    return-object v0

    :cond_2
    iget-object v3, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v4, v3, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v6, v3, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    monitor-exit v4

    move-object v6, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, v3, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v3, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :cond_4
    :goto_1
    if-ge v10, v9, :cond_5

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lˑʼ/ᴵᵔ;

    iget-object v12, v11, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveAllState: adding fragment ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    goto :goto_1

    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v3, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    new-array v4, v3, [Lˑʼ/ⁱˊ;

    :goto_3
    if-ge v7, v3, :cond_8

    new-instance v9, Lˑʼ/ⁱˊ;

    iget-object v10, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lˑʼ/ﹳٴ;

    invoke-direct {v9, v10}, Lˑʼ/ⁱˊ;-><init>(Lˑʼ/ﹳٴ;)V

    aput-object v9, v4, v7

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: adding back stack #"

    const-string v11, ": "

    invoke-static {v7, v10, v11}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move-object v4, v8

    :cond_8
    new-instance v3, Lˑʼ/ʿᵢ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v8, v3, Lˑʼ/ʿᵢ;->ᴵᵔ:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lˑʼ/ʿᵢ;->ˊʻ:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lˑʼ/ʿᵢ;->ٴᵢ:Ljava/util/ArrayList;

    iput-object v2, v3, Lˑʼ/ʿᵢ;->ʾˋ:Ljava/util/ArrayList;

    iput-object v6, v3, Lˑʼ/ʿᵢ;->ᴵˊ:Ljava/util/ArrayList;

    iput-object v4, v3, Lˑʼ/ʿᵢ;->ʽʽ:[Lˑʼ/ⁱˊ;

    iget-object v2, p0, Lˑʼ/ʿ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v3, Lˑʼ/ʿᵢ;->ˈٴ:I

    iget-object v2, p0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iput-object v2, v3, Lˑʼ/ʿᵢ;->ᴵᵔ:Ljava/lang/String;

    :cond_9
    iget-object v2, p0, Lˑʼ/ʿ;->ﾞʻ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lˑʼ/ʿ;->ﾞʻ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lˑʼ/ʿ;->ٴᵢ:Ljava/util/ArrayDeque;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Lˑʼ/ʿᵢ;->ˉٴ:Ljava/util/ArrayList;

    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-static {v4, v3}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "fragment_"

    invoke-static {v4, v3}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_b
    return-object v0

    :goto_6
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ˑʼ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʻٴ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ᴵʼ;

    iget-object v5, v4, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v6, v5, Lˑʼ/ᴵᵔ;->ـﹶ:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lˑʼ/ʿ;->ᵔי:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, v5, Lˑʼ/ᴵᵔ;->ـﹶ:Z

    invoke-virtual {v4}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ˑٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ˈˏ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v0

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˑٴ()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ()Ljava/util/HashSet;
    .locals 8

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ʻٴ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ᴵʼ;

    iget-object v4, v4, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    const v5, 0x7f0b0367

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lˑʼ/ᵔﹳ;

    if-eqz v7, :cond_1

    check-cast v6, Lˑʼ/ᵔﹳ;

    goto :goto_1

    :cond_1
    new-instance v6, Lˑʼ/ᵔﹳ;

    invoke-direct {v6, v4}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final יـ(ZZ)V
    .locals 3

    .prologue
    if-eqz p2, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴﹳ(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lˑʼ/ᴵᵔ;->יﹳ(Z)V

    if-eqz p2, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lˑʼ/ʿ;->יـ(ZZ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ـˆ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const-string v0, "    "

    invoke-static {p1, v0}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "    "

    invoke-static {p1, v3}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ᴵʼ;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lˑʼ/ᴵᵔ;->ˉـ:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mContainerId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lˑʼ/ᴵᵔ;->ʿ:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mTag="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mWho="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mBackStackNesting="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lˑʼ/ᴵᵔ;->ʼˈ:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAdded="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mRemoving="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᵔי:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mFromLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mInLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHidden="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mDetached="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mMenuVisible="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v4, Lˑʼ/ᴵᵔ;->ˏᵢ:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHasMenu="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lˑʼ/ᴵᵔ;->ᐧᴵ:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mUserVisibleHint="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v6, :cond_0

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v6, :cond_1

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v6, :cond_2

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v4, v5}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mTarget="

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " mTargetRequestCode="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lˑʼ/ᴵᵔ;->ᵎⁱ:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_8

    move v6, v5

    goto :goto_1

    :cond_8
    iget-boolean v6, v6, Lˑʼ/ᴵˊ;->ﹳٴ:Z

    :goto_1
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    iget v6, v6, Lˑʼ/ᴵˊ;->ⁱˊ:I

    :goto_2
    if-eqz v6, :cond_b

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_3

    :cond_a
    iget v6, v6, Lˑʼ/ᴵˊ;->ⁱˊ:I

    :goto_3
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    :cond_c
    iget v6, v6, Lˑʼ/ᴵˊ;->ʽ:I

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_d

    move v6, v5

    goto :goto_5

    :cond_d
    iget v6, v6, Lˑʼ/ᴵˊ;->ʽ:I

    :goto_5
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_e
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_f

    move v6, v5

    goto :goto_6

    :cond_f
    iget v6, v6, Lˑʼ/ᴵˊ;->ˈ:I

    :goto_6
    if-eqz v6, :cond_11

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_10

    move v6, v5

    goto :goto_7

    :cond_10
    iget v6, v6, Lˑʼ/ᴵˊ;->ˈ:I

    :goto_7
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_11
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_12

    move v6, v5

    goto :goto_8

    :cond_12
    iget v6, v6, Lˑʼ/ᴵˊ;->ˑﹳ:I

    :goto_8
    if-eqz v6, :cond_14

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v6, :cond_13

    move v6, v5

    goto :goto_9

    :cond_13
    iget v6, v6, Lˑʼ/ᴵˊ;->ˑﹳ:I

    :goto_9
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_14
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v6, :cond_15

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v6, :cond_16

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface {v4}, Landroidx/lifecycle/ᴵʼ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v6

    sget-object v7, Lיﹳ/ﹳٴ;->ʽ:Landroidx/lifecycle/ˊˋ;

    sget-object v8, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    new-instance v9, Lˏˆ/ﹳٴ;

    invoke-direct {v9, v6, v7, v8}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    const-class v6, Lיﹳ/ﹳٴ;

    invoke-static {v6}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v6

    invoke-virtual {v6}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    const-string v8, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object v6

    check-cast v6, Lיﹳ/ﹳٴ;

    iget-object v6, v6, Lיﹳ/ﹳٴ;->ⁱˊ:Lיـ/יـ;

    iget v7, v6, Lיـ/יـ;->ʽʽ:I

    if-lez v7, :cond_1a

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Loaders:"

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v7, v6, Lיـ/יـ;->ʽʽ:I

    if-gtz v7, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v6, v5}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_18

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v6, Lיـ/יـ;->ʾˋ:[I

    aget p1, p1, v5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_19
    const-string p1, "Local and anonymous classes can not be ViewModels"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1a
    :goto_a
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Child "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const-string v5, "  "

    invoke-static {v3, v5}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3, p4}, Lˑʼ/ʿ;->ـˆ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_1d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_b
    if-ge v1, p2, :cond_1d

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵᵔ;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    iget-object p2, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_c
    if-ge v1, p2, :cond_1e

    iget-object v2, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ᴵᵔ;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lˑʼ/ᴵᵔ;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    iget-object p2, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_d
    if-ge v1, p2, :cond_1f

    iget-object v2, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ﹳٴ;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lˑʼ/ﹳٴ;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p3, v3}, Lˑʼ/ﹳٴ;->ˆʾ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Back Stack Index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ʿ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e
    if-ge p4, v0, :cond_20

    iget-object v1, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ˈⁱ;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    :catchall_0
    move-exception p1

    goto :goto_f

    :cond_20
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    if-eqz p2, :cond_21

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lˑʼ/ʿ;->ـˆ:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lˑʼ/ʿ;->ᵎⁱ:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lˑʼ/ʿ;->ٴʼ:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lˑʼ/ʿ;->ᵎˊ:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Lˑʼ/ʿ;->ˉٴ:Z

    if-eqz p2, :cond_22

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lˑʼ/ʿ;->ˉٴ:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_22
    return-void

    :goto_f
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ـˏ(IZ)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Lˑʼ/ʿ;->ـˆ:I

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    iput p1, p0, Lˑʼ/ʿ;->ـˆ:I

    iget-object p1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object p2, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    iget-object v0, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_3
    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ᴵᵔ;

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ᴵʼ;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᴵʼ;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    iget-object v1, v0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lˏˆ/ﹳٴ;->ᴵˊ(Lˑʼ/ᴵʼ;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lˑʼ/ʿ;->ˑʼ()V

    iget-boolean p1, p0, Lˑʼ/ʿ;->ˉٴ:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_7

    iget p2, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p1}, Lᵔᵢ/ˆʾ;->invalidateOptionsMenu()V

    iput-boolean v2, p0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final ـﹶ(Ljava/lang/String;Lʿי/ʽⁱ;Lˑʼ/ᐧᴵ;)V
    .locals 6

    .prologue
    iget-object v4, p2, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    iget-object p2, v4, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lˑʼ/ˋᵔ;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lˑʼ/ˋᵔ;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lˑʼ/ﹳـ;

    invoke-direct {p1, v4, v3, v0}, Lˑʼ/ﹳـ;-><init>(Landroidx/lifecycle/ـˆ;Lˑʼ/ᐧᴵ;Lˑʼ/ˋᵔ;)V

    iget-object p2, v1, Lˑʼ/ʿ;->ᵔʾ:Ljava/util/Map;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˑʼ/ﹳـ;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lˑʼ/ﹳـ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iget-object p1, p1, Lˑʼ/ﹳـ;->ʽʽ:Lˑʼ/ˋᵔ;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Setting FragmentResultListener with key "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " lifecycleOwner "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and listener "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    nop

    :cond_2
    invoke-virtual {v4, v0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method

.method public final ٴʼ(Lˑʼ/ᴵᵔ;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Lˑʼ/ᴵᵔ;->ʿ:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    invoke-virtual {v0}, Lʼ/ᵎﹶ;->ᵢˏ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    iget p1, p1, Lˑʼ/ᴵᵔ;->ʿ:I

    invoke-virtual {v0, p1}, Lʼ/ᵎﹶ;->ʼʼ(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ٴﹳ(Ljava/lang/IllegalStateException;)V
    .locals 7

    .prologue
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    const-string v0, "Activity state:"

    nop

    new-instance v0, Lˑʼ/ᵎʻ;

    invoke-direct {v0}, Lˑʼ/ᵎʻ;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0, v6, v5, v2, v4}, Lᵔᵢ/ˆʾ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    nop

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Lˑʼ/ʿ;->ـˆ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    nop

    :goto_0
    throw p1
.end method

.method public final ٴﹶ()Z
    .locals 7

    .prologue
    iget v0, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ᴵᵔ;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lˑʼ/ʿ;->ˋᵔ(Lˑʼ/ᴵᵔ;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v6}, Lˑʼ/ʿ;->ٴﹶ()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput-object v3, p0, Lˑʼ/ʿ;->ˑﹳ:Ljava/util/ArrayList;

    return v4
.end method

.method public final ᐧᴵ(Landroid/os/Bundle;)V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "result_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v5, v5, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v6, v6, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v4, v3, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    iget-object v5, v3, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lˑʼ/ʿᵢ;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v4, v1, Lˑʼ/ʿᵢ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_5
    :goto_2
    iget-object v9, v0, Lˑʼ/ʿ;->ʼᐧ:Lˑʼ/ᵎˊ;

    const-string v10, "): "

    const/4 v11, 0x2

    const-string v12, "FragmentManager"

    if-ge v8, v6, :cond_9

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v8, v8, 0x1

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lˏˆ/ﹳٴ;->ˋᵔ(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lˑʼ/ˏᵢ;

    iget-object v15, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iget-object v14, v14, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    iget-object v15, v15, Lˑʼ/ᵎᵔ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lˑʼ/ᴵᵔ;

    if-eqz v14, :cond_7

    invoke-static {v11}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 p1, v11

    const-string v11, "restoreSaveState: re-attaching retained "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    goto :goto_3

    :cond_6
    move/from16 p1, v11

    :goto_3
    new-instance v11, Lˑʼ/ᴵʼ;

    invoke-direct {v11, v9, v3, v14, v13}, Lˑʼ/ᴵʼ;-><init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Lˑʼ/ᴵᵔ;Landroid/os/Bundle;)V

    move-object v9, v13

    goto :goto_4

    :cond_7
    move/from16 p1, v11

    new-instance v15, Lˑʼ/ᴵʼ;

    iget-object v9, v0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v9, v9, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    invoke-virtual {v0}, Lˑʼ/ʿ;->ᵎˊ()Lˑʼ/ˑٴ;

    move-result-object v19

    iget-object v9, v0, Lˑʼ/ʿ;->ʼᐧ:Lˑʼ/ᵎˊ;

    iget-object v11, v0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v20}, Lˑʼ/ᴵʼ;-><init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Ljava/lang/ClassLoader;Lˑʼ/ˑٴ;Landroid/os/Bundle;)V

    move-object/from16 v9, v20

    move-object v11, v15

    :goto_4
    iget-object v13, v11, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iput-object v9, v13, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    iput-object v0, v13, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-static/range {p1 .. p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "restoreSaveState: active ("

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v13, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    :cond_8
    iget-object v9, v0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v9, v9, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v11, v9}, Lˑʼ/ᴵʼ;->ˉʿ(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v11}, Lˏˆ/ﹳٴ;->ʾˋ(Lˑʼ/ᴵʼ;)V

    iget v9, v0, Lˑʼ/ʿ;->ـˆ:I

    iput v9, v11, Lˑʼ/ᴵʼ;->ˑﹳ:I

    goto/16 :goto_2

    :cond_9
    move/from16 p1, v11

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, v2, Lˑʼ/ᵎᵔ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x1

    if-ge v6, v2, :cond_c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v6, v6, 0x1

    check-cast v11, Lˑʼ/ᴵᵔ;

    iget-object v13, v11, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    goto :goto_5

    :cond_a
    invoke-static/range {p1 .. p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Discarding retained Fragment "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " that was not found in the set of active Fragments "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lˑʼ/ʿᵢ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    nop

    :cond_b
    iget-object v13, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    invoke-virtual {v13, v11}, Lˑʼ/ᵎᵔ;->ˆʾ(Lˑʼ/ᴵᵔ;)V

    iput-object v0, v11, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    new-instance v13, Lˑʼ/ᴵʼ;

    invoke-direct {v13, v9, v3, v11}, Lˑʼ/ᴵʼ;-><init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Lˑʼ/ᴵᵔ;)V

    iput v8, v13, Lˑʼ/ᴵʼ;->ˑﹳ:I

    invoke-virtual {v13}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    iput-boolean v8, v11, Lˑʼ/ᴵᵔ;->ᵔי:Z

    invoke-virtual {v13}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    goto :goto_5

    :cond_c
    iget-object v2, v1, Lˑʼ/ʿᵢ;->ᴵˊ:Ljava/util/ArrayList;

    iget-object v4, v3, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_f

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-static/range {p1 .. p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "restoreSaveState: added ("

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_d
    invoke-virtual {v3, v9}, Lˏˆ/ﹳٴ;->ʼˎ(Lˑʼ/ᴵᵔ;)V

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v6, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v2, v1, Lˑʼ/ʿᵢ;->ʽʽ:[Lˑʼ/ⁱˊ;

    if-eqz v2, :cond_17

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v1, Lˑʼ/ʿᵢ;->ʽʽ:[Lˑʼ/ⁱˊ;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_7
    iget-object v4, v1, Lˑʼ/ʿᵢ;->ʽʽ:[Lˑʼ/ⁱˊ;

    array-length v5, v4

    if-ge v2, v5, :cond_16

    aget-object v4, v4, v2

    iget-object v5, v4, Lˑʼ/ⁱˊ;->ᴵˊ:Ljava/util/ArrayList;

    new-instance v6, Lˑʼ/ﹳٴ;

    invoke-direct {v6, v0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    iget-object v9, v4, Lˑʼ/ⁱˊ;->ʾˋ:[I

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    array-length v14, v9

    if-ge v11, v14, :cond_12

    new-instance v14, Lˑʼ/ʻᵎ;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v15, v11, 0x1

    aget v7, v9, v11

    iput v7, v14, Lˑʼ/ʻᵎ;->ﹳٴ:I

    invoke-static/range {p1 .. p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v7

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Instantiate "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " op #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " base fragment #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v9, v15

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_10
    invoke-static {}, Landroidx/lifecycle/ᵔʾ;->values()[Landroidx/lifecycle/ᵔʾ;

    move-result-object v7

    iget-object v8, v4, Lˑʼ/ⁱˊ;->ʽʽ:[I

    aget v8, v8, v13

    aget-object v7, v7, v8

    iput-object v7, v14, Lˑʼ/ʻᵎ;->ᵔᵢ:Landroidx/lifecycle/ᵔʾ;

    invoke-static {}, Landroidx/lifecycle/ᵔʾ;->values()[Landroidx/lifecycle/ᵔʾ;

    move-result-object v7

    iget-object v8, v4, Lˑʼ/ⁱˊ;->ˈٴ:[I

    aget v8, v8, v13

    aget-object v7, v7, v8

    iput-object v7, v14, Lˑʼ/ʻᵎ;->ʼˎ:Landroidx/lifecycle/ᵔʾ;

    add-int/lit8 v7, v11, 0x2

    aget v8, v9, v15

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    iput-boolean v8, v14, Lˑʼ/ʻᵎ;->ʽ:Z

    add-int/lit8 v8, v11, 0x3

    aget v7, v9, v7

    iput v7, v14, Lˑʼ/ʻᵎ;->ˈ:I

    add-int/lit8 v15, v11, 0x4

    aget v8, v9, v8

    iput v8, v14, Lˑʼ/ʻᵎ;->ˑﹳ:I

    add-int/lit8 v18, v11, 0x5

    aget v15, v9, v15

    iput v15, v14, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    add-int/lit8 v11, v11, 0x6

    move-object/from16 v19, v9

    aget v9, v19, v18

    iput v9, v14, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    iput v7, v6, Lˑʼ/ﹳٴ;->ⁱˊ:I

    iput v8, v6, Lˑʼ/ﹳٴ;->ʽ:I

    iput v15, v6, Lˑʼ/ﹳٴ;->ˈ:I

    iput v9, v6, Lˑʼ/ﹳٴ;->ˑﹳ:I

    invoke-virtual {v6, v14}, Lˑʼ/ﹳٴ;->ⁱˊ(Lˑʼ/ʻᵎ;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v19

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_12
    iget v7, v4, Lˑʼ/ⁱˊ;->ᴵᵔ:I

    iput v7, v6, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    iget-object v7, v4, Lˑʼ/ⁱˊ;->ˊʻ:Ljava/lang/String;

    iput-object v7, v6, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    iget v7, v4, Lˑʼ/ⁱˊ;->ˉٴ:I

    iput v7, v6, Lˑʼ/ﹳٴ;->ˆʾ:I

    iget-object v7, v4, Lˑʼ/ⁱˊ;->ᵎⁱ:Ljava/lang/CharSequence;

    iput-object v7, v6, Lˑʼ/ﹳٴ;->ٴﹶ:Ljava/lang/CharSequence;

    iget v7, v4, Lˑʼ/ⁱˊ;->ٴʼ:I

    iput v7, v6, Lˑʼ/ﹳٴ;->ﾞʻ:I

    iget-object v7, v4, Lˑʼ/ⁱˊ;->ᵎˊ:Ljava/lang/CharSequence;

    iput-object v7, v6, Lˑʼ/ﹳٴ;->ˉʿ:Ljava/lang/CharSequence;

    iget-object v7, v4, Lˑʼ/ⁱˊ;->ᵔי:Ljava/util/ArrayList;

    iput-object v7, v6, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    iget-object v7, v4, Lˑʼ/ⁱˊ;->ˆﾞ:Ljava/util/ArrayList;

    iput-object v7, v6, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    iget-boolean v7, v4, Lˑʼ/ⁱˊ;->ᵔٴ:Z

    iput-boolean v7, v6, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    iget v4, v4, Lˑʼ/ⁱˊ;->ٴᵢ:I

    iput v4, v6, Lˑʼ/ﹳٴ;->ˏי:I

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_14

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_13

    iget-object v8, v6, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˑʼ/ʻᵎ;

    invoke-virtual {v3, v7}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v7

    iput-object v7, v8, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_14
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lˑʼ/ﹳٴ;->ˈ(I)V

    invoke-static/range {p1 .. p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "restoreAllState: back stack #"

    const-string v5, " (index "

    invoke-static {v2, v4, v5}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lˑʼ/ﹳٴ;->ˏי:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    new-instance v4, Lˑʼ/ᵎʻ;

    invoke-direct {v4}, Lˑʼ/ᵎʻ;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "  "

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v8}, Lˑʼ/ﹳٴ;->ˆʾ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    goto :goto_b

    :cond_15
    const/4 v8, 0x0

    :goto_b
    iget-object v4, v0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v8, v7

    goto/16 :goto_7

    :cond_16
    const/4 v8, 0x0

    goto :goto_c

    :cond_17
    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    :goto_c
    iget-object v2, v0, Lˑʼ/ʿ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Lˑʼ/ʿᵢ;->ˈٴ:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Lˑʼ/ʿᵢ;->ᴵᵔ:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v3, v2}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v2

    iput-object v2, v0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ﹳᐧ(Lˑʼ/ᴵᵔ;)V

    :cond_18
    iget-object v2, v1, Lˑʼ/ʿᵢ;->ˊʻ:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    move v7, v8

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_19

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lˑʼ/ʿᵢ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ʽ;

    iget-object v5, v0, Lˑʼ/ʿ;->ﾞʻ:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_19
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Lˑʼ/ʿᵢ;->ˉٴ:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lˑʼ/ʿ;->ٴᵢ:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final ᐧﾞ(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ﹳٴ;

    iget-boolean v3, v3, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Lˑʼ/ʿ;->ʽʽ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ﹳٴ;

    iget-boolean v3, v3, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lˑʼ/ʿ;->ʽʽ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Lˑʼ/ʿ;->ʽʽ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᴵʼ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    iget-object v2, p0, Lˑʼ/ʿ;->ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    iget-object v2, p0, Lˑʼ/ʿ;->ˋᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎʻ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ᴵˊ(Lˑʼ/ﹳٴ;Z)V
    .locals 5

    .prologue
    if-eqz p2, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lˑʼ/ʿ;->ᵎˊ:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lˑʼ/ʿ;->ᵢˏ(Z)V

    iget-object p2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p2, Lˑʼ/ﹳٴ;->יـ:Z

    invoke-virtual {p2}, Lˑʼ/ﹳٴ;->ˑﹳ()V

    const/4 p2, 0x3

    invoke-static {p2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Reversing mTransitioningOp "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as part of execSingleAction for action "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "FragmentManager"

    nop

    :cond_2
    iget-object p2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {p2, v1, v1}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    iget-object p2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object v2, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v3, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v3}, Lˑʼ/ﹳٴ;->ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    iget-object p2, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object p2, p2, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_3
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ʻᵎ;

    iget-object v4, v4, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_3

    iput-boolean v1, v4, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    :cond_5
    iget-object p2, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object v1, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lˑʼ/ﹳٴ;->ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    :try_start_0
    iget-object p1, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    iget-object p2, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lˑʼ/ʿ;->ᐧﾞ(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎʻ()V

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʻٴ()V

    iget-object p1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lˑʼ/ʿ;->ˈ()V

    throw p1
.end method

.method public final ᴵˑ(IIZ)V
    .locals 1

    .prologue
    if-ltz p1, :cond_0

    new-instance v0, Lˑʼ/ᴵˑ;

    invoke-direct {v0, p0, p1, p2}, Lˑʼ/ᴵˑ;-><init>(Lˑʼ/ʿ;II)V

    invoke-virtual {p0, v0, p3}, Lˑʼ/ʿ;->ʼʼ(Lˑʼ/ˈⁱ;Z)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Bad id: "

    invoke-static {p1, p3}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᴵᵔ;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵʼ;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵎʻ()V
    .locals 5

    .prologue
    const-string v0, "FragmentManager "

    iget-object v1, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lˑʼ/ʿ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    iput-boolean v4, v2, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    iget-object v2, v2, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    :cond_0
    invoke-static {v3}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎⁱ()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    invoke-static {v0}, Lˑʼ/ʿ;->ˊˋ(Lˑʼ/ᴵᵔ;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnBackPressedCallback for FragmentManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enabled state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_4
    iget-object v0, p0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    iput-boolean v4, v0, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    iget-object v0, v0, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    :cond_5
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ᵎˊ()Lˑʼ/ˑٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ᵎˊ()Lˑʼ/ˑٴ;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ᴵˊ:Lˑʼ/ˑٴ;

    return-object v0
.end method

.method public final ᵎᵔ(Lˑʼ/ᴵᵔ;)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lˑʼ/ᴵᵔ;->ʼˈ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {p1}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v0

    iget-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    invoke-static {p1}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_3
    iput-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ﹳﹳ(Lˑʼ/ᴵᵔ;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵎⁱ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;
    .locals 3

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᴵʼ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lˑʼ/ᴵʼ;

    iget-object v2, p0, Lˑʼ/ʿ;->ʼᐧ:Lˑʼ/ᵎˊ;

    invoke-direct {v0, v2, v1, p1}, Lˑʼ/ᴵʼ;-><init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Lˑʼ/ᴵᵔ;)V

    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˑʼ/ᴵʼ;->ˉʿ(Ljava/lang/ClassLoader;)V

    iget p1, p0, Lˑʼ/ʿ;->ـˆ:I

    iput p1, v0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    return-object v0
.end method

.method public final ᵔʾ(Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴﹳ(Ljava/lang/IllegalStateException;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lˑʼ/ʿ;->ᵔʾ(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ᵔי()Lٴﾞ/ˆʾ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽʽ:Lٴﾞ/ˆʾ;

    return-object v0
.end method

.method public final ᵔᵢ(Lˑʼ/ᴵᵔ;)V
    .locals 4

    .prologue
    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_0
    iget-boolean v2, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    iget-boolean v3, p1, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    if-eqz v3, :cond_3

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    invoke-static {p1}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_2
    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ﹳﹳ(Lˑʼ/ᴵᵔ;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final ᵔﹳ()V
    .locals 3

    .prologue
    iget v0, p0, Lˑʼ/ʿ;->ـˆ:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1}, Lˑʼ/ʿ;->ᵔﹳ()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ᵢˏ(Z)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˑʼ/ʿ;->ⁱˊ:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lˑʼ/ʿ;->ᵎˊ:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʼˈ()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˑʼ/ʿ;->ˆﾞ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˑʼ/ʿ;->ᵔٴ:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lˑʼ/ٴᵢ;Lʼ/ᵎﹶ;Lˑʼ/ᴵᵔ;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_12

    iput-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iput-object p2, p0, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    iput-object p3, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    iget-object p2, p0, Lˑʼ/ʿ;->ᵔﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Lˑʼ/ˊˋ;

    invoke-direct {v0, p3}, Lˑʼ/ˊˋ;-><init>(Lˑʼ/ᴵᵔ;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵎʻ()V

    :cond_2
    if-eqz p1, :cond_5

    iget-object p2, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p2}, Lʽ/ٴﹶ;->ˑﹳ()Lʽ/ʽﹳ;

    move-result-object v2

    iput-object v2, p0, Lˑʼ/ʿ;->ᵎﹶ:Lʽ/ʽﹳ;

    if-eqz p3, :cond_3

    move-object p2, p3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p2

    iget-object v0, p2, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lʽ/יـ;

    iget-object v9, p0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    invoke-direct {v0, v2, p2, v9}, Lʽ/יـ;-><init>(Lʽ/ʽﹳ;Landroidx/lifecycle/ـˆ;Lˑʼ/ᵔٴ;)V

    iget-object p2, v9, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lʽ/ʽﹳ;->ʽ()V

    new-instance v0, Lʼﾞ/ᴵᵔ;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-class v3, Lʽ/ʽﹳ;

    const-string v4, "updateEnabledCallbacks"

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lʼﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, v9, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    :cond_5
    :goto_2
    if-eqz p3, :cond_7

    iget-object p1, p3, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object p1, p1, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iget-object p2, p1, Lˑʼ/ᵎᵔ;->ʽ:Ljava/util/HashMap;

    iget-object v0, p3, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᵎᵔ;

    if-nez v0, :cond_6

    new-instance v0, Lˑʼ/ᵎᵔ;

    iget-boolean p1, p1, Lˑʼ/ᵎᵔ;->ˑﹳ:Z

    invoke-direct {v0, p1}, Lˑʼ/ᵎᵔ;-><init>(Z)V

    iget-object p1, p3, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iput-object v0, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_9

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p1}, Lʽ/ٴﹶ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object p1

    sget-object p2, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    new-instance v0, Lˏˆ/ﹳٴ;

    sget-object v1, Lˑʼ/ᵎᵔ;->ᵔᵢ:Landroidx/lifecycle/ˊˋ;

    invoke-direct {v0, p1, v1, p2}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    const-class p1, Lˑʼ/ᵎᵔ;

    invoke-static {p1}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object p1

    invoke-virtual {p1}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    check-cast p1, Lˑʼ/ᵎᵔ;

    iput-object p1, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lˑʼ/ᵎᵔ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lˑʼ/ᵎᵔ;-><init>(Z)V

    iput-object p1, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    :goto_3
    iget-object p1, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʼˈ()Z

    move-result p2

    iput-boolean p2, p1, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    iget-object p1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    iget-object p2, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-object p2, p1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_a

    if-nez p3, :cond_a

    invoke-virtual {p1}, Lˑʼ/ٴᵢ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object p1

    new-instance p2, Lʽ/ˈ;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Lʽ/ˈ;-><init>(ILjava/lang/Object;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    invoke-virtual {p1, v0}, Lˑʼ/ᵎˊ;->ʼᐧ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ᐧᴵ(Landroid/os/Bundle;)V

    :cond_a
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    if-eqz p3, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    const-string v1, ":"

    invoke-static {p2, v0, v1}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_b
    const-string p2, ""

    :goto_4
    const-string v0, "FragmentManager:"

    invoke-static {v0, p2}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "StartActivityForResult"

    invoke-static {p2, v0}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lˑʼ/ʼˈ;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v2, Lˉˆ/ʿ;

    const/16 v3, 0x16

    invoke-direct {v2, v3, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Lʽ/ﾞᴵ;->ˈ(Ljava/lang/String;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ʿ;->ˈٴ:Lˑﹳ/ˈ;

    const-string v0, "StartIntentSenderForResult"

    invoke-static {p2, v0}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lˑʼ/ʼˈ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v2, Lˑʼ/ˆﾞ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lˑʼ/ˆﾞ;-><init>(Lˑʼ/ʿ;I)V

    invoke-virtual {p1, v0, v1, v2}, Lʽ/ﾞᴵ;->ˈ(Ljava/lang/String;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ʿ;->ᴵᵔ:Lˑﹳ/ˈ;

    const-string v0, "RequestPermissions"

    invoke-static {p2, v0}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lˑʼ/ʼˈ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v1, Lˑʼ/ˆﾞ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lˑʼ/ˆﾞ;-><init>(Lˑʼ/ʿ;I)V

    invoke-virtual {p1, p2, v0, v1}, Lʽ/ﾞᴵ;->ˈ(Ljava/lang/String;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;

    move-result-object p1

    iput-object p1, p0, Lˑʼ/ʿ;->ˊʻ:Lˑﹳ/ˈ;

    :cond_c
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lˑʼ/ʿ;->ﹳᐧ:Lˑʼ/ᵔי;

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {p1, p2}, Lʽ/ٴﹶ;->ʽ(Lˑٴ/ﹳٴ;)V

    :cond_d
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ˆﾞ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lˑʼ/ʿ;->יـ:Lˑʼ/ᵔי;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lˑʼ/ʿ;->ˏי:Lˑʼ/ᵔי;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lˑʼ/ʿ;->ʽﹳ:Lˑʼ/ᵔי;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object p1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz p1, :cond_11

    if-nez p3, :cond_11

    iget-object p1, p1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object p2, p1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p0, Lˑʼ/ʿ;->ʻٴ:Lˑʼ/ˈʿ;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳـ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v0, p0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v1, p0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v0, v1, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    iget-object v0, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ʾᵎ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1}, Lˑʼ/ʿ;->ﹳـ()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ﹳٴ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;
    .locals 3

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـᵎ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lٴﹳ/ⁱˊ;->ʽ(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_1
    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    move-result-object v0

    iput-object p0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ʾˋ(Lˑʼ/ᴵʼ;)V

    iget-boolean v2, p1, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Lˏˆ/ﹳٴ;->ʼˎ(Lˑʼ/ᴵᵔ;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    iget-object v2, p1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    :cond_2
    invoke-static {p1}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_3
    return-object v0
.end method

.method public final ﹳᐧ(Lˑʼ/ᴵᵔ;)V
    .locals 2

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lˑʼ/ʿ;->ˊˋ(Lˑʼ/ᴵᵔ;)Z

    move-result v0

    iget-object v1, p1, Lˑʼ/ᴵᵔ;->ٴʼ:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lˑʼ/ᴵᵔ;->ٴʼ:Ljava/lang/Boolean;

    iget-object p1, p1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {p1}, Lˑʼ/ʿ;->ᵎʻ()V

    iget-object v0, p1, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p1, v0}, Lˑʼ/ʿ;->ﹳᐧ(Lˑʼ/ᴵᵔ;)V

    :cond_1
    return-void
.end method

.method public final ﹳﹳ(Lˑʼ/ᴵᵔ;)V
    .locals 5

    .prologue
    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ٴʼ(Lˑʼ/ᴵᵔ;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p1, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v1, Lˑʼ/ᴵˊ;->ⁱˊ:I

    :goto_0
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget v4, v1, Lˑʼ/ᴵˊ;->ʽ:I

    :goto_1
    add-int/2addr v4, v3

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget v3, v1, Lˑʼ/ᴵˊ;->ˈ:I

    :goto_2
    add-int/2addr v3, v4

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget v1, v1, Lˑʼ/ᴵˊ;->ˑﹳ:I

    :goto_3
    add-int/2addr v1, v3

    if-lez v1, :cond_7

    const v1, 0x7f0b0437

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object p1, p1, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v2, p1, Lˑʼ/ᴵˊ;->ﹳٴ:Z

    :goto_4
    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object p1

    iput-boolean v2, p1, Lˑʼ/ᴵˊ;->ﹳٴ:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final ﹶᐧ(Lˑʼ/ᴵᵔ;)V
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v1, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    iput-object p1, p0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ﹳᐧ(Lˑʼ/ᴵᵔ;)V

    iget-object p1, p0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p0, p1}, Lˑʼ/ʿ;->ﹳᐧ(Lˑʼ/ᴵᵔ;)V

    return-void
.end method

.method public final ﾞʻ()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ʿ;->ᵎˊ:Z

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    invoke-virtual {p0}, Lˑʼ/ʿ;->ʾᵎ()V

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iget-object v2, p0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ᵎᵔ;

    iget-boolean v1, v1, Lˑʼ/ᵎᵔ;->ﾞᴵ:Z

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-static {v1}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lˑʼ/ʿ;->ﾞʻ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ʽ;

    iget-object v4, v4, Lˑʼ/ʽ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v8, Lˑʼ/ᵎᵔ;

    invoke-virtual {v8, v7, v3}, Lˑʼ/ᵎᵔ;->ᵎﹶ(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v1, v1, Lʽ/ٴﹶ;->ˆﾞ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->יـ:Lˑʼ/ᵔי;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v1, v1, Lʽ/ٴﹶ;->ᵔי:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ﹳᐧ:Lˑʼ/ᵔי;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    if-eqz v2, :cond_9

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v1, v1, Lʽ/ٴﹶ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ˏי:Lˑʼ/ᵔי;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_a

    move v2, v0

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    if-eqz v2, :cond_b

    iget-object v1, v1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v1, v1, Lʽ/ٴﹶ;->ˑٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ʽﹳ:Lˑʼ/ᵔי;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    iget-object v1, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move v0, v3

    :goto_6
    if-eqz v0, :cond_e

    iget-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    if-nez v0, :cond_e

    iget-object v0, v1, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v0, v0, Lʽ/ٴﹶ;->ʽʽ:Lˑי/ʽ;

    iget-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lˑʼ/ʿ;->ʻٴ:Lˑʼ/ˈʿ;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v0, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_e
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iput-object v0, p0, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    iput-object v0, p0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    iget-object v1, p0, Lˑʼ/ʿ;->ᵎﹶ:Lʽ/ʽﹳ;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    iget-object v1, v1, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽ/ʽ;

    invoke-interface {v2}, Lʽ/ʽ;->cancel()V

    goto :goto_8

    :cond_f
    iput-object v0, p0, Lˑʼ/ʿ;->ᵎﹶ:Lʽ/ʽﹳ;

    :cond_10
    iget-object v0, p0, Lˑʼ/ʿ;->ˈٴ:Lˑﹳ/ˈ;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lˑﹳ/ˈ;->ⁱˊ()V

    iget-object v0, p0, Lˑʼ/ʿ;->ᴵᵔ:Lˑﹳ/ˈ;

    invoke-virtual {v0}, Lˑﹳ/ˈ;->ⁱˊ()V

    iget-object v0, p0, Lˑʼ/ʿ;->ˊʻ:Lˑﹳ/ˈ;

    invoke-virtual {v0}, Lˑﹳ/ˈ;->ⁱˊ()V

    :cond_11
    return-void
.end method

.method public final ﾞᴵ(Ljava/util/ArrayList;II)Ljava/util/HashSet;
    .locals 8

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ﹳٴ;

    iget-object v1, v1, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ʻᵎ;

    iget-object v4, v4, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    const v5, 0x7f0b0367

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lˑʼ/ᵔﹳ;

    if-eqz v7, :cond_1

    check-cast v6, Lˑʼ/ᵔﹳ;

    goto :goto_2

    :cond_1
    new-instance v6, Lˑʼ/ᵔﹳ;

    invoke-direct {v6, v4}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
