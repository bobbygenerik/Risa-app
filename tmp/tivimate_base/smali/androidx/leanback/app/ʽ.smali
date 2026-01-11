.class public Landroidx/leanback/app/ʽ;
.super Lˑʼ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public ʻʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public ʻᴵ:Landroidx/leanback/widget/ʻٴ;

.field public ʿـ:Landroidx/leanback/widget/ˊʻ;

.field public ـˊ:Landroidx/leanback/widget/ˑٴ;

.field public ـᵢ:Ljava/util/ArrayList;

.field public ᐧˎ:Landroid/view/ContextThemeWrapper;

.field public ᵎʿ:Landroidx/leanback/widget/ˑٴ;

.field public ⁱי:Landroidx/leanback/widget/ˊʻ;

.field public ﹳⁱ:Landroidx/leanback/widget/ˊʻ;

.field public ﹶ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lˑʼ/ᴵᵔ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/leanback/app/ʽ;->ˊﹳ()V

    return-void
.end method

.method public static ˈـ(Lᵔᵢ/ˆʾ;Lʼⁱ/ˉʿ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ٴﹶ()Lˑʼ/ʿ;

    move-result-object p0

    const-string v0, "leanBackGuidedStepSupportFragment"

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "GuidedStepF"

    const-string p1, "Fragment is already exists, likely calling addAsRoot() when savedInstanceState is not null in Activity.onCreate()."

    nop

    return-void

    :cond_0
    new-instance v1, Lˑʼ/ﹳٴ;

    invoke-direct {v1, p0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroidx/leanback/app/ʽ;->ᵢʻ(I)V

    const p0, 0x1020002

    invoke-virtual {v1, p0, p1, v0}, Lˑʼ/ﹳٴ;->ﾞʻ(ILˑʼ/ᴵᵔ;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    return-void
.end method

.method public static ˋـ(Landroidx/leanback/widget/ʾᵎ;)Z
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    if-eqz p1, :cond_4

    sget-object v0, Lˑʼ/ˊᵔ;->ﹳٴ:Lˑʼ/ﹳﹳ;

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\' has already been added to the transaction."

    if-nez v0, :cond_2

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the source name \'"

    invoke-static {p2, p1, v1}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A shared element with the target name \'"

    invoke-static {p1, p2, v1}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static ᵢˋ(Landroid/content/Context;)Z
    .locals 3

    .prologue
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f0402f6

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne p0, v1, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ﾞˋ(Lˑʼ/ʿ;Landroidx/leanback/app/ʽ;)V
    .locals 6

    .prologue
    const-string v0, "leanBackGuidedStepSupportFragment"

    invoke-virtual {p0, v0}, Lˑʼ/ʿ;->ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v1

    instance-of v2, v1, Landroidx/leanback/app/ʽ;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/leanback/app/ʽ;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    new-instance v5, Lˑʼ/ﹳٴ;

    invoke-direct {v5, p0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    xor-int/lit8 p0, v4, 0x1

    invoke-virtual {p1, p0}, Landroidx/leanback/app/ʽ;->ᵢʻ(I)V

    iget-object p0, p1, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-nez p0, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    const-string v4, "uiStyle"

    invoke-virtual {p0, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    const-string p0, ""

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "GuidedStepEntrance"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "GuidedStepDefault"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v5, p0}, Lˑʼ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object p0, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "action_fragment_root"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "action_fragment_background"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "action_fragment"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01c9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "guidedactions_root"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01bd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "guidedactions_content"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01c7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "guidedactions_list_background"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01ca

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "guidedactions_root2"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01be

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "guidedactions_content2"

    invoke-static {v5, v1, v4}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    const v1, 0x7f0b01c8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "guidedactions_list_background2"

    invoke-static {v5, p0, v1}, Landroidx/leanback/app/ʽ;->ˎʾ(Lˑʼ/ﹳٴ;Landroid/view/View;Ljava/lang/String;)V

    :cond_5
    const p0, 0x1020002

    invoke-virtual {v5, p0, p1, v0}, Lˑʼ/ﹳٴ;->ﾞʻ(ILˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    return-void
.end method


# virtual methods
.method public final ʽʾ(Landroidx/leanback/widget/ʾᵎ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ˊʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾᵎ;->ʽ()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    new-instance v0, Landroidx/leanback/widget/ʾˋ;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ʾˋ;-><init>(Landroidx/leanback/widget/ˊʻ;)V

    invoke-virtual {p1, v2, v0}, Landroidx/leanback/widget/ᵔᵢ;->ʼـ(ILandroidx/leanback/widget/ˎᐧ;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    new-instance v0, Landroidx/leanback/widget/ʻٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {p0}, Landroidx/leanback/app/ʽ;->ٴʿ()Landroidx/leanback/widget/ˑٴ;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p0}, Landroidx/leanback/app/ʽ;->ˊˊ()Landroidx/leanback/widget/ˑٴ;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p0}, Landroidx/leanback/app/ʽ;->ˊﹳ()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/leanback/app/ʽ;->ᵔⁱ(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/ʾᵎ;

    invoke-static {v4}, Landroidx/leanback/app/ʽ;->ˋـ(Landroidx/leanback/widget/ʾᵎ;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/leanback/app/ʽ;->ˎـ(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/leanback/app/ʽ;->ﾞˏ(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ʾᵎ;

    invoke-static {v3}, Landroidx/leanback/app/ʽ;->ˋـ(Landroidx/leanback/widget/ʾᵎ;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buttonaction_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v3, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ⁱי:Landroidx/leanback/widget/ˊʻ;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ˊʻ;->ˉˆ(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final ʽⁱ()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final ʾˊ()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ˈ:Landroid/view/View;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ˑﹳ:Landroid/view/View;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ˈ:Landroid/view/View;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ˑﹳ:Landroid/view/View;

    iput-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    iput-object v1, p0, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    iput-object v1, p0, Landroidx/leanback/app/ʽ;->ﹳⁱ:Landroidx/leanback/widget/ˊʻ;

    iput-object v1, p0, Landroidx/leanback/app/ʽ;->ⁱי:Landroidx/leanback/widget/ˊʻ;

    iput-object v1, p0, Landroidx/leanback/app/ʽ;->ʻʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ʾﾞ(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/ʾᵎ;

    invoke-static {v4}, Landroidx/leanback/app/ʽ;->ˋـ(Landroidx/leanback/widget/ʾᵎ;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v4, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ʾᵎ;

    invoke-static {v3}, Landroidx/leanback/app/ʽ;->ˋـ(Landroidx/leanback/widget/ʾᵎ;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buttonaction_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v3, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ˆˑ(Z)V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public ˊˊ()Landroidx/leanback/widget/ˑٴ;
    .locals 2

    .prologue
    new-instance v0, Landroidx/leanback/widget/ˑٴ;

    invoke-direct {v0}, Landroidx/leanback/widget/ˑٴ;-><init>()V

    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAsButtonActions() must be called before creating views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊﹳ()V
    .locals 8

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "uiStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x7f0b01cc

    const v5, 0x7f0b01cd

    if-nez v0, :cond_1

    new-instance v0, Landroidx/leanback/transition/FadeAndShortSlide;

    const v6, 0x800005

    invoke-direct {v0, v6}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    invoke-virtual {v0, v4, v1}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ﹶˎ(Ljava/lang/Cloneable;)V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    new-instance v3, Landroidx/leanback/transition/ﹳٴ;

    invoke-direct {v3}, Landroidx/leanback/transition/ﹳٴ;-><init>()V

    invoke-virtual {v3, v2}, Landroid/transition/ChangeBounds;->setReparent(Z)V

    new-instance v6, Landroid/transition/TransitionSet;

    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v6, v2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    invoke-virtual {v6, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v6, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object v6, v0, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    new-instance v3, Landroidx/leanback/transition/FadeAndShortSlide;

    const v7, 0x800007

    invoke-direct {v3, v7}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    const v7, 0x7f0b00f7

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    const v7, 0x7f0b0047

    invoke-virtual {v3, v7}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v7, v2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {p0, v7}, Lˑʼ/ᴵᵔ;->ﹶˎ(Ljava/lang/Cloneable;)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object v6, v0, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v6}, Lˑʼ/ᴵᵔ;->ﹶˎ(Ljava/lang/Cloneable;)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object v6, v0, Lˑʼ/ᴵˊ;->ˉʿ:Ljava/lang/Object;

    :cond_3
    :goto_1
    new-instance v0, Landroidx/leanback/transition/FadeAndShortSlide;

    const v2, 0x800003

    invoke-direct {v0, v2}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    invoke-virtual {v0, v4, v1}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ʽˑ(Ljava/lang/Cloneable;)V

    return-void
.end method

.method public ˊﾞ()Lˏˆ/ﹳٴ;
    .locals 6

    new-instance v0, Lˏˆ/ﹳٴ;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, ""

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lˏˆ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final ˎˉ(J)I
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    iget-wide v1, v1, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ˎـ(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ˊʻ;->ˉˆ(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public ˏⁱ(Landroidx/leanback/widget/ʾᵎ;)J
    .locals 2

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public final ˑˆ(J)Landroidx/leanback/widget/ʾᵎ;
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/app/ʽ;->ˎˉ(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ـʻ(Landroidx/leanback/widget/ʾᵎ;)V
    .locals 0

    return-void
.end method

.method public ٴʿ()Landroidx/leanback/widget/ˑٴ;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/ˑٴ;

    invoke-direct {v0}, Landroidx/leanback/widget/ˑٴ;-><init>()V

    return-object v0
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .prologue
    move-object/from16 v3, p0

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/app/ʽ;->ᵢˋ(Landroid/content/Context;)Z

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x7f0402f5

    invoke-virtual {v2, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Landroidx/leanback/app/ʽ;->ᵢˋ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v4, v3, Landroidx/leanback/app/ʽ;->ᐧˎ:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_0
    iput-object v6, v3, Landroidx/leanback/app/ʽ;->ᐧˎ:Landroid/view/ContextThemeWrapper;

    move v2, v8

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const-string v0, "GuidedStepF"

    const-string v1, "GuidedStepSupportFragment does not have an appropriate theme set."

    nop

    :cond_2
    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ᐧˎ:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_3

    move-object/from16 v9, p1

    goto :goto_1

    :cond_3
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object v9, v0

    :goto_1
    const v0, 0x7f0e00a7

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/leanback/app/GuidedStepRootLayout;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0b00f7

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0045

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    check-cast v2, Landroidx/leanback/widget/NonOverlappingLinearLayout;

    invoke-virtual {v2, v7}, Landroidx/leanback/widget/NonOverlappingLinearLayout;->setFocusableViewAvailableFixEnabled(Z)V

    invoke-virtual {v3}, Landroidx/leanback/app/ʽ;->ˊﾞ()Lˏˆ/ﹳٴ;

    move-result-object v2

    iget-object v4, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v11, v2, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Landroidx/leanback/app/ʽ;->ʻᴵ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v13, 0x7f0e00a1

    invoke-virtual {v9, v13, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b01bb

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    const v14, 0x7f0b01b7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    const v14, 0x7f0b01b9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    const v14, 0x7f0b01ba

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    const v14, 0x7f0b01b8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    iget-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_4

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_5

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_6

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v14, v12, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_8

    iget-object v2, v2, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_2
    iget-object v2, v12, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v15, 0xa

    if-nez v14, :cond_9

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v4, v12, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {v0, v9, v1}, Landroidx/leanback/widget/ˑٴ;->ʽ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {v0, v9, v1}, Landroidx/leanback/widget/ˑٴ;->ʽ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Landroidx/leanback/app/ﹳٴ;

    invoke-direct {v12, v3}, Landroidx/leanback/app/ﹳٴ;-><init>(Landroidx/leanback/app/ʽ;)V

    new-instance v0, Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    new-instance v2, Landroidx/leanback/app/ⁱˊ;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/leanback/app/ⁱˊ;-><init>(Landroidx/leanback/app/ʽ;I)V

    iget-object v4, v3, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/ˊʻ;-><init>(Ljava/util/ArrayList;Landroidx/leanback/widget/ᴵᵔ;Landroidx/leanback/app/ʽ;Landroidx/leanback/widget/ˑٴ;Z)V

    iput-object v0, v3, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    new-instance v0, Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    new-instance v2, Landroidx/leanback/app/ﹳٴ;

    invoke-direct {v2, v3}, Landroidx/leanback/app/ﹳٴ;-><init>(Landroidx/leanback/app/ʽ;)V

    iget-object v4, v3, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/ˊʻ;-><init>(Ljava/util/ArrayList;Landroidx/leanback/widget/ᴵᵔ;Landroidx/leanback/app/ʽ;Landroidx/leanback/widget/ˑٴ;Z)V

    iput-object v0, v3, Landroidx/leanback/app/ʽ;->ⁱי:Landroidx/leanback/widget/ˊʻ;

    new-instance v0, Landroidx/leanback/widget/ˊʻ;

    new-instance v2, Landroidx/leanback/app/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v2, v3, v1}, Landroidx/leanback/app/ⁱˊ;-><init>(Landroidx/leanback/app/ʽ;I)V

    iget-object v4, v3, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/ˊʻ;-><init>(Ljava/util/ArrayList;Landroidx/leanback/widget/ᴵᵔ;Landroidx/leanback/app/ʽ;Landroidx/leanback/widget/ˑٴ;Z)V

    iput-object v0, v3, Landroidx/leanback/app/ʽ;->ﹳⁱ:Landroidx/leanback/widget/ˊʻ;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(IZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/leanback/app/ʽ;->ʻʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v2, v3, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    iget-object v4, v3, Landroidx/leanback/app/ʽ;->ⁱי:Landroidx/leanback/widget/ˊʻ;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_d

    iput-object v0, v2, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    :cond_d
    if-eqz v4, :cond_e

    iput-object v0, v4, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    :cond_e
    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ʻʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ﹳⁱ:Landroidx/leanback/widget/ˊʻ;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_f

    iput-object v0, v1, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    :cond_f
    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ʻʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iput-object v12, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_10

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ﹳⁱ:Landroidx/leanback/widget/ˊʻ;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    :cond_10
    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ᵎʿ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    iget-object v1, v3, Landroidx/leanback/app/ʽ;->ⁱי:Landroidx/leanback/widget/ˊʻ;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_11
    iget-object v0, v3, Landroidx/leanback/app/ʽ;->ᐧˎ:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_12

    goto :goto_3

    :cond_12
    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    :goto_3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f0402ce

    invoke-virtual {v0, v2, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0b0047

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    :goto_4
    const v0, 0x7f0e00a6

    invoke-virtual {v9, v0, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    const v1, 0x7f0b01ce

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_14
    return-object v10
.end method

.method public ᵔⁱ(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final ᵢʻ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    const-string v1, "uiStyle"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    :cond_2
    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/app/ʽ;->ˊﹳ()V

    :cond_3
    return-void
.end method

.method public final ﹳᵢ(J)I
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/app/ʽ;->ـᵢ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    iget-wide v1, v1, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ﹶʽ(I)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/app/ʽ;->ʿـ:Landroidx/leanback/widget/ˊʻ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lˋˋ/ˉـ;->ˈ(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ﾞˏ(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method
