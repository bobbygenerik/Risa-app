.class public final Landroidx/leanback/widget/ˊʻ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Landroidx/leanback/widget/ʾˋ;

.field public final ˆʾ:Ljava/util/ArrayList;

.field public final ˈ:Landroidx/leanback/widget/VerticalGridView;

.field public ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public final ˉˆ:Landroidx/leanback/widget/ʼʼ;

.field public final ˑﹳ:Z

.field public final ٴﹶ:Landroidx/leanback/widget/ᴵᵔ;

.field public final ᵎﹶ:Landroidx/leanback/widget/ʽʽ;

.field public ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

.field public final ᵔᵢ:Landroidx/leanback/widget/ᴵˊ;

.field public final ﾞʻ:Landroidx/leanback/widget/ˑٴ;

.field public final ﾞᴵ:Landroidx/leanback/widget/ˈٴ;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/leanback/widget/ᴵᵔ;Landroidx/leanback/app/ʽ;Landroidx/leanback/widget/ˑٴ;Z)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ʼʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ˉˆ:Landroidx/leanback/widget/ʼʼ;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/leanback/widget/ˊʻ;->ٴﹶ:Landroidx/leanback/widget/ᴵᵔ;

    iput-object p4, p0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    new-instance p1, Landroidx/leanback/widget/ˈٴ;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ˈٴ;-><init>(Landroidx/leanback/widget/ˊʻ;)V

    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ﾞᴵ:Landroidx/leanback/widget/ˈٴ;

    new-instance p1, Landroidx/leanback/widget/ʽʽ;

    invoke-direct {p1, p0, p3}, Landroidx/leanback/widget/ʽʽ;-><init>(Landroidx/leanback/widget/ˊʻ;Landroidx/leanback/app/ʽ;)V

    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ᵎﹶ:Landroidx/leanback/widget/ʽʽ;

    new-instance p1, Landroidx/leanback/widget/ᴵˊ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroidx/leanback/widget/ᴵˊ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ᵔᵢ:Landroidx/leanback/widget/ᴵˊ;

    new-instance p1, Landroidx/leanback/widget/ʾˋ;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ʾˋ;-><init>(Landroidx/leanback/widget/ˊʻ;)V

    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ʼˎ:Landroidx/leanback/widget/ʾˋ;

    iput-boolean p5, p0, Landroidx/leanback/widget/ˊʻ;->ˑﹳ:Z

    if-nez p5, :cond_1

    sget-object p1, Landroidx/leanback/widget/ᵎⁱ;->ﹳٴ:Landroidx/leanback/widget/ᵎⁱ;

    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

    :cond_1
    if-eqz p5, :cond_2

    iget-object p1, p4, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    goto :goto_1

    :cond_2
    iget-object p1, p4, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    :goto_1
    iput-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    return-void
.end method


# virtual methods
.method public final ʼᐧ(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    if-eqz p1, :cond_1

    const-string v0, "escapeNorth"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ᵔᵢ:Landroidx/leanback/widget/ᴵˊ;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    instance-of v1, p1, Landroidx/leanback/widget/ˊˋ;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/leanback/widget/ˊˋ;

    invoke-interface {v1, v0}, Landroidx/leanback/widget/ˊˋ;->setImeKeyListener(Landroidx/leanback/widget/ˋᵔ;)V

    :cond_0
    instance-of v0, p1, Landroidx/leanback/widget/ˉٴ;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/leanback/widget/ˉٴ;

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ʼˎ:Landroidx/leanback/widget/ʾˋ;

    invoke-interface {p1, v0}, Landroidx/leanback/widget/ˉٴ;->setOnAutofillListener(Landroidx/leanback/widget/ٴᵢ;)V

    :cond_1
    return-void
.end method

.method public final ʽ(I)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    iget-object p1, p0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public final ˉˆ(Ljava/util/List;)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ˊʻ;->ˑﹳ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ˑٴ;->ﹳٴ(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ᵎﹶ:Landroidx/leanback/widget/ʽʽ;

    iget-object v1, v0, Landroidx/leanback/widget/ʽʽ;->ⁱˊ:Landroidx/leanback/widget/ˊʻ;

    iget-object v0, v0, Landroidx/leanback/widget/ʽʽ;->ﹳٴ:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v2, v1, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    iget-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/leanback/widget/ˈʿ;

    iget-object v0, v1, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "GuidedActionAdapter"

    const-string v2, "RecyclerView returned null view holder"

    nop

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

    iget-object v1, p0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/leanback/widget/ᵢˏ;

    invoke-direct {p1, p0, v0}, Landroidx/leanback/widget/ᵢˏ;-><init>(Landroidx/leanback/widget/ˊʻ;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lˋˋ/ⁱˊ;->ˑﹳ(Lˋˋ/ⁱˊ;)Lˋˋ/ʾᵎ;

    move-result-object p1

    new-instance v0, Lˉˆ/ʿ;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lˋˋ/ʾᵎ;->ﹳٴ(Lˉˆ/ʿ;)V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lˋˋ/ᴵˑ;->ˈ()V

    return-void
.end method

.method public final ᵔʾ(Landroid/widget/TextView;)Landroidx/leanback/widget/ˈʿ;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_1

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ˑٴ;->ˈ(Landroid/view/ViewGroup;)Landroidx/leanback/widget/ˈʿ;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p2, :cond_1

    invoke-virtual {v0}, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ()I

    move-result p2

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_5

    const p2, 0x7f0e00a3

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroidx/leanback/widget/ˈʿ;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-direct {v1, p2, v2}, Landroidx/leanback/widget/ˈʿ;-><init>(Landroid/view/View;Z)V

    move-object p1, v1

    :goto_2
    iget-object p2, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ﾞᴵ:Landroidx/leanback/widget/ˈٴ;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ˉˆ:Landroidx/leanback/widget/ʼʼ;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ᵎﹶ:Landroidx/leanback/widget/ʽʽ;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p1, Landroidx/leanback/widget/ˈʿ;->ᴵˑ:Landroid/widget/TextView;

    instance-of v0, p2, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p2, Landroid/widget/EditText;

    goto :goto_3

    :cond_3
    move-object p2, v1

    :goto_3
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/ˊʻ;->ʼᐧ(Landroid/widget/EditText;)V

    iget-object p2, p1, Landroidx/leanback/widget/ˈʿ;->ˉـ:Landroid/widget/TextView;

    instance-of v0, p2, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/widget/EditText;

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/ˊʻ;->ʼᐧ(Landroid/widget/EditText;)V

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ViewType "

    const-string v1, " not supported in GuidedActionsStylist"

    invoke-static {p2, v0, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v3, p1

    check-cast v3, Landroidx/leanback/widget/ˈʿ;

    iget-object v4, v3, Landroidx/leanback/widget/ˈʿ;->ᴵˑ:Landroid/widget/TextView;

    iget-object v5, v3, Landroidx/leanback/widget/ˈʿ;->ˉـ:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    iget-object v2, v0, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v6, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    const/16 v9, 0x1c

    if-eqz v4, :cond_4

    iget v10, v1, Landroidx/leanback/widget/ʾᵎ;->ʼˎ:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v10, v1, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ˈ()Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v2, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ:F

    goto :goto_0

    :cond_1
    iget v10, v2, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ:F

    :goto_0
    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLongClickable(Z)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_3

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ʽ()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v4}, Lʾﾞ/ˑﹳ;->ʼˎ(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lʾﾞ/ˑﹳ;->ʼˎ(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_3
    if-lt v10, v8, :cond_4

    invoke-static {v4}, Lʾﾞ/ˑﹳ;->ˉʿ(Landroid/widget/TextView;)V

    :cond_4
    :goto_1
    const/4 v10, 0x2

    const/16 v11, 0x8

    if-eqz v5, :cond_9

    iget v12, v1, Landroidx/leanback/widget/ʾᵎ;->ˆʾ:I

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v12, v1, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v1, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    move v12, v7

    :goto_2
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ˈ()Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, v2, Landroidx/leanback/widget/ˑٴ;->ʼˎ:F

    goto :goto_3

    :cond_6
    iget v12, v2, Landroidx/leanback/widget/ˑٴ;->ˆʾ:F

    :goto_3
    invoke-virtual {v5, v12}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLongClickable(Z)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v9, :cond_8

    iget v8, v1, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    if-ne v8, v10, :cond_7

    invoke-static {v5}, Lʾﾞ/ˑﹳ;->ʼˎ(Landroid/widget/TextView;)V

    goto :goto_4

    :cond_7
    invoke-static {v5}, Lʾﾞ/ˑﹳ;->ʼˎ(Landroid/widget/TextView;)V

    goto :goto_4

    :cond_8
    if-lt v12, v8, :cond_9

    invoke-static {v4}, Lʾﾞ/ˑﹳ;->ˉʿ(Landroid/widget/TextView;)V

    :cond_9
    :goto_4
    iget-object v8, v3, Landroidx/leanback/widget/ˈʿ;->ᵎᵔ:Landroid/widget/ImageView;

    const/4 v12, 0x1

    if-eqz v8, :cond_d

    iget v13, v1, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-eqz v13, :cond_c

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v13, v1, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a

    const v13, 0x101021a

    goto :goto_5

    :cond_a
    const v13, 0x1010219

    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v13, v15, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, v15, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v14, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v9, v8, Landroid/widget/Checkable;

    if-eqz v9, :cond_d

    check-cast v8, Landroid/widget/Checkable;

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_7

    :cond_c
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_7
    iget-object v8, v3, Landroidx/leanback/widget/ˈʿ;->ʿᵢ:Landroid/widget/ImageView;

    if-eqz v8, :cond_f

    iget-object v9, v1, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageLevel(I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_e
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    :goto_8
    iget v8, v1, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    and-int/2addr v8, v10

    const/high16 v9, 0x20000

    if-ne v8, v10, :cond_11

    if-eqz v4, :cond_15

    iget v8, v2, Landroidx/leanback/widget/ˑٴ;->ᵔʾ:I

    if-ne v8, v12, :cond_10

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_9

    :cond_10
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_9
    invoke-virtual {v4}, Landroid/widget/TextView;->getInputType()I

    move-result v8

    or-int/2addr v8, v9

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setInputType(I)V

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v8

    or-int/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget v8, v2, Landroidx/leanback/widget/ˑٴ;->ᵔﹳ:I

    iget v11, v2, Landroidx/leanback/widget/ˑٴ;->ʼᐧ:I

    mul-int/2addr v11, v10

    sub-int/2addr v8, v11

    iget v11, v2, Landroidx/leanback/widget/ˑٴ;->ᵔʾ:I

    mul-int/2addr v11, v10

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    mul-int/2addr v10, v11

    sub-int/2addr v8, v10

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_b

    :cond_11
    if-eqz v4, :cond_13

    iget v8, v2, Landroidx/leanback/widget/ˑٴ;->ˉʿ:I

    if-ne v8, v12, :cond_12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    :cond_12
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_13
    :goto_a
    if-eqz v5, :cond_15

    iget v8, v2, Landroidx/leanback/widget/ˑٴ;->ˉˆ:I

    if-ne v8, v12, :cond_14

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_b

    :cond_14
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_15
    :goto_b
    invoke-virtual {v2, v3, v7, v7}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    iget v1, v1, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v8, 0x20

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_16

    invoke-virtual {v6, v12}, Landroid/view/View;->setFocusable(Z)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_c

    :cond_16
    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    check-cast v6, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_c
    instance-of v1, v4, Landroid/widget/EditText;

    if-eqz v1, :cond_17

    check-cast v4, Landroid/widget/EditText;

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    :goto_d
    const/4 v1, 0x5

    if-eqz v4, :cond_18

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_18
    instance-of v4, v5, Landroid/widget/EditText;

    if-eqz v4, :cond_19

    move-object v9, v5

    check-cast v9, Landroid/widget/EditText;

    goto :goto_e

    :cond_19
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_1a

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_1a
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/ˑٴ;->ʼˎ(Landroidx/leanback/widget/ˈʿ;)V

    return-void
.end method
