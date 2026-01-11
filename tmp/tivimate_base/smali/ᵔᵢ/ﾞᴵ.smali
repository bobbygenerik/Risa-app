.class public final Lᵔᵢ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:Landroid/widget/TextView;

.field public ʼʼ:I

.field public ʼˎ:Landroid/widget/Button;

.field public ʼᐧ:Ljava/lang/CharSequence;

.field public final ʽ:Landroid/view/Window;

.field public final ʽʽ:I

.field public ʽﹳ:Landroid/widget/TextView;

.field public final ʾˋ:I

.field public ʾᵎ:Landroid/widget/ListAdapter;

.field public ˆʾ:Ljava/lang/CharSequence;

.field public ˈ:Ljava/lang/CharSequence;

.field public final ˈٴ:I

.field public ˉʿ:Ljava/lang/CharSequence;

.field public ˉˆ:Landroid/widget/Button;

.field public final ˊʻ:Lʻᐧ/ᵔﹳ;

.field public ˏי:Landroid/widget/ImageView;

.field public ˑﹳ:Ljava/lang/CharSequence;

.field public יـ:Landroid/graphics/drawable/Drawable;

.field public ـˆ:Landroid/view/View;

.field public final ٴᵢ:Landroidx/leanback/widget/ʼʼ;

.field public ٴﹶ:Landroid/os/Message;

.field public final ᴵˊ:I

.field public final ᴵᵔ:Z

.field public ᵎﹶ:Landroid/view/View;

.field public ᵔʾ:Landroid/os/Message;

.field public ᵔᵢ:Z

.field public ᵔﹳ:Landroid/os/Message;

.field public final ᵢˏ:I

.field public final ⁱˊ:Lᵔᵢ/ᵔᵢ;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﹳᐧ:Landroidx/core/widget/NestedScrollView;

.field public ﾞʻ:Landroid/widget/Button;

.field public ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᵔᵢ/ᵔᵢ;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔᵢ/ﾞᴵ;->ᵔᵢ:Z

    const/4 v1, -0x1

    iput v1, p0, Lᵔᵢ/ﾞᴵ;->ʼʼ:I

    new-instance v1, Landroidx/leanback/widget/ʼʼ;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lᵔᵢ/ﾞᴵ;->ٴᵢ:Landroidx/leanback/widget/ʼʼ;

    iput-object p1, p0, Lᵔᵢ/ﾞᴵ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lᵔᵢ/ﾞᴵ;->ⁱˊ:Lᵔᵢ/ᵔᵢ;

    iput-object p3, p0, Lᵔᵢ/ﾞᴵ;->ʽ:Landroid/view/Window;

    new-instance p3, Lʻᐧ/ᵔﹳ;

    invoke-direct {p3}, Lʻᐧ/ᵔﹳ;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p3, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᵔᵢ/ﾞᴵ;->ˊʻ:Lʻᐧ/ᵔﹳ;

    sget-object p3, Lᵎﹶ/ﹳٴ;->ˑﹳ:[I

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lᵔᵢ/ﾞᴵ;->ᵢˏ:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lᵔᵢ/ﾞᴵ;->ʾˋ:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lᵔᵢ/ﾞᴵ;->ᴵˊ:I

    const/4 p3, 0x7

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lᵔᵢ/ﾞᴵ;->ʽʽ:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lᵔᵢ/ﾞᴵ;->ˈٴ:I

    const/4 p3, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lᵔᵢ/ﾞᴵ;->ᴵᵔ:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    invoke-virtual {p1, v1}, Lᵔᵢ/ᵔʾ;->ᵔᵢ(I)Z

    return-void
.end method

.method public static ⁱˊ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static ﹳٴ(Landroid/view/View;)Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lᵔᵢ/ﾞᴵ;->ﹳٴ(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public final ʽ(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .prologue
    if-eqz p3, :cond_0

    iget-object v0, p0, Lᵔᵢ/ﾞᴵ;->ˊʻ:Lʻᐧ/ᵔﹳ;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lᵔᵢ/ﾞᴵ;->ˆʾ:Ljava/lang/CharSequence;

    iput-object p3, p0, Lᵔᵢ/ﾞᴵ;->ٴﹶ:Landroid/os/Message;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lᵔᵢ/ﾞᴵ;->ˉʿ:Ljava/lang/CharSequence;

    iput-object p3, p0, Lᵔᵢ/ﾞᴵ;->ᵔʾ:Landroid/os/Message;

    return-void

    :cond_3
    iput-object p2, p0, Lᵔᵢ/ﾞᴵ;->ʼᐧ:Ljava/lang/CharSequence;

    iput-object p3, p0, Lᵔᵢ/ﾞᴵ;->ᵔﹳ:Landroid/os/Message;

    return-void
.end method
