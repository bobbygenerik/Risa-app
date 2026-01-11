.class public abstract Lˑʿ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/util/ArrayList;

.field public static final ⁱˊ:Ljava/lang/ThreadLocal;

.field public static final ﹳٴ:Lˑʿ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˑʿ/ﹳٴ;

    invoke-direct {v0}, Lˑʿ/ﹳٴ;-><init>()V

    sput-object v0, Lˑʿ/ᵢˏ;->ﹳٴ:Lˑʿ/ﹳٴ;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lˑʿ/ᵢˏ;->ⁱˊ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lˑʿ/ᵢˏ;->ʽ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ʽ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V
    .locals 4

    .prologue
    invoke-static {}, Lˑʿ/ᵢˏ;->ⁱˊ()Lיـ/ˑﹳ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lˑʿ/ʻٴ;

    invoke-virtual {v3, p0}, Lˑʿ/ʻٴ;->ˊʻ(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lˑʿ/ʻٴ;->ˆʾ(Landroid/view/ViewGroup;Z)V

    :cond_1
    const p1, 0x7f0b03bc

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static ⁱˊ()Lיـ/ˑﹳ;
    .locals 3

    .prologue
    sget-object v0, Lˑʿ/ᵢˏ;->ⁱˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיـ/ˑﹳ;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lיـ/ˑﹳ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lיـ/ﹳᐧ;-><init>(I)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static ﹳٴ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V
    .locals 2

    .prologue
    sget-object v0, Lˑʿ/ᵢˏ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Lˑʿ/ᵢˏ;->ﹳٴ:Lˑʿ/ﹳٴ;

    :cond_0
    invoke-virtual {p1}, Lˑʿ/ʻٴ;->ﾞʻ()Lˑʿ/ʻٴ;

    move-result-object p1

    invoke-static {p0, p1}, Lˑʿ/ᵢˏ;->ʽ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    const/4 v0, 0x0

    const v1, 0x7f0b03bc

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lˑʿ/ʼʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lˑʿ/ʼʼ;->ʾˋ:Lˑʿ/ʻٴ;

    iput-object p0, v0, Lˑʿ/ʼʼ;->ᴵˊ:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
