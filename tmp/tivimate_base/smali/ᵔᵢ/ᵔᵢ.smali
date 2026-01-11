.class public final Lᵔᵢ/ᵔᵢ;
.super Lʽ/ﾞʻ;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lᵔᵢ/ٴﹶ;


# instance fields
.field public ˈٴ:Lᵔᵢ/ᵢˏ;

.field public final ˊʻ:Lᵔᵢ/ﾞᴵ;

.field public final ᴵᵔ:Lᵔᵢ/ʾˋ;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    .prologue
    invoke-static {p1, p2}, Lᵔᵢ/ᵔᵢ;->ˑﹳ(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x1

    const v1, 0x7f0401f6

    if-nez p2, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p1, v2}, Lʽ/ﾞʻ;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lᵔᵢ/ʾˋ;

    invoke-direct {v2, p0}, Lᵔᵢ/ʾˋ;-><init>(Lᵔᵢ/ᵔᵢ;)V

    iput-object v2, p0, Lᵔᵢ/ᵔᵢ;->ᴵᵔ:Lᵔᵢ/ʾˋ;

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v2

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, v2

    check-cast p1, Lᵔᵢ/ᵢˏ;

    iput p2, p1, Lᵔᵢ/ᵢˏ;->ˑ:I

    invoke-virtual {v2}, Lᵔᵢ/ᵔʾ;->ˑﹳ()V

    new-instance p1, Lᵔᵢ/ﾞᴵ;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lᵔᵢ/ﾞᴵ;-><init>(Landroid/content/Context;Lᵔᵢ/ᵔᵢ;Landroid/view/Window;)V

    iput-object p1, p0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    return-void
.end method

.method public static ˑﹳ(Landroid/content/Context;I)I
    .locals 2

    .prologue
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040033

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object p2, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lᵔᵢ/ʻٴ;->ﹳٴ(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0}, Lᵔᵢ/ᵔʾ;->ﾞᴵ()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lᵔᵢ/ᵔᵢ;->ᴵᵔ:Lᵔᵢ/ʾˋ;

    invoke-static {v1, v0, p0, p1}, Lˈˊ/ᵔʾ;->ˆʾ(Lˋᵔ/ٴﹶ;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᵔᵢ/ᵢˏ;->ᴵˊ(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .prologue
    invoke-virtual/range {p0 .. p1}, Lᵔᵢ/ᵔᵢ;->ˈ(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    iget v2, v1, Lᵔᵢ/ﾞᴵ;->ᵢˏ:I

    iget-object v3, v1, Lᵔᵢ/ﾞᴵ;->ⁱˊ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {v3, v2}, Lᵔᵢ/ᵔᵢ;->setContentView(I)V

    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ﹳٴ:Landroid/content/Context;

    iget-object v3, v1, Lᵔᵢ/ﾞᴵ;->ʽ:Landroid/view/Window;

    const v4, 0x7f0b02ea

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b03b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b00f5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00b7

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b010d

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v11, v1, Lᵔᵢ/ﾞᴵ;->ᵎﹶ:Landroid/view/View;

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v14, 0x0

    if-eqz v11, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    if-eqz v15, :cond_2

    invoke-static {v11}, Lᵔᵢ/ﾞᴵ;->ﹳٴ(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    const/high16 v12, 0x20000

    invoke-virtual {v3, v12, v12}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    const/16 v12, 0x8

    const/4 v13, -0x1

    if-eqz v15, :cond_5

    const v15, 0x7f0b010c

    invoke-virtual {v3, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v1, Lᵔᵢ/ﾞᴵ;->ᵔᵢ:Z

    if-eqz v9, :cond_4

    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lˉˆ/יﹳ;

    const/4 v11, 0x0

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b00b7

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v5, v6}, Lᵔᵢ/ﾞᴵ;->ⁱˊ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v7, v8}, Lᵔᵢ/ﾞᴵ;->ⁱˊ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v9, v10}, Lᵔᵢ/ﾞᴵ;->ⁱˊ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    const v8, 0x7f0b0338

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    iput-object v8, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v14}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v14}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v8, 0x102000b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lᵔᵢ/ﾞᴵ;->ʻٴ:Landroid/widget/TextView;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ˑﹳ:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ʻٴ:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v8, :cond_9

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v8, 0x1020019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v1, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ٴᵢ:Landroidx/leanback/widget/ʼʼ;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ˆʾ:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    move v8, v14

    goto :goto_4

    :cond_a
    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ˆʾ:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x1

    :goto_4
    const v10, 0x102001a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    iget-object v11, v1, Lᵔᵢ/ﾞᴵ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v8, v8, 0x2

    :goto_5
    const v10, 0x102001b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v1, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ʼᐧ:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ʼᐧ:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v8, v8, 0x4

    :goto_6
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v10, 0x7f040031

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v9, Landroid/util/TypedValue;->data:I

    const/4 v9, 0x2

    if-eqz v2, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v8, v11, :cond_d

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_d
    if-ne v8, v9, :cond_e

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_e
    const/4 v10, 0x4

    if-ne v8, v10, :cond_f

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v10, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_7
    if-eqz v8, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ـˆ:Landroid/view/View;

    const v8, 0x7f0b03af

    if-eqz v2, :cond_11

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v2, v13, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ـˆ:Landroid/view/View;

    invoke-virtual {v5, v10, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    const v2, 0x1020006

    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ˈ:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-boolean v2, v1, Lᵔᵢ/ﾞᴵ;->ᴵᵔ:Z

    if-eqz v2, :cond_13

    const v2, 0x7f0b0056

    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lᵔᵢ/ﾞᴵ;->ʽﹳ:Landroid/widget/TextView;

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ˈ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->יـ:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_12
    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ʽﹳ:Landroid/widget/TextView;

    iget-object v8, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget-object v10, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    iget-object v11, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iget-object v15, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v2, v8, v10, v11, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_13
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v12, :cond_14

    const/4 v11, 0x1

    goto :goto_a

    :cond_14
    move v11, v14

    :goto_a
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v12, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    move v2, v14

    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v12, :cond_16

    const/4 v4, 0x1

    goto :goto_c

    :cond_16
    move v4, v14

    :goto_c
    if-nez v4, :cond_17

    const v7, 0x7f0b0398

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    if-eqz v2, :cond_1b

    iget-object v7, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    if-eqz v7, :cond_18

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_18
    iget-object v7, v1, Lᵔᵢ/ﾞᴵ;->ˑﹳ:Ljava/lang/CharSequence;

    if-nez v7, :cond_1a

    iget-object v7, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_19

    goto :goto_d

    :cond_19
    const/4 v12, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const v7, 0x7f0b03ac

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    :goto_e
    if-eqz v12, :cond_1c

    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_1b
    const v5, 0x7f0b0399

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_f
    iget-object v5, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1d

    if-nez v2, :cond_20

    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-eqz v2, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    goto :goto_10

    :cond_1e
    iget v8, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->ʾˋ:I

    :goto_10
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    if-eqz v4, :cond_1f

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    goto :goto_11

    :cond_1f
    iget v12, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->ᴵˊ:I

    :goto_11
    invoke-virtual {v5, v7, v8, v10, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_20
    if-nez v11, :cond_24

    iget-object v5, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v5, :cond_21

    goto :goto_12

    :cond_21
    iget-object v5, v1, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    :goto_12
    if-eqz v5, :cond_24

    if-eqz v4, :cond_22

    move v14, v9

    :cond_22
    or-int/2addr v2, v14

    const v4, 0x7f0b0337

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b0336

    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v7, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    const/4 v7, 0x3

    invoke-static {v5, v2, v7}, Lˋᵔ/ˈٴ;->ⁱˊ(Landroid/view/View;II)V

    if-eqz v4, :cond_23

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    if-eqz v3, :cond_24

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    iget-object v2, v1, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v2, :cond_25

    iget-object v3, v1, Lᵔᵢ/ﾞᴵ;->ʾᵎ:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_25

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Lᵔᵢ/ﾞᴵ;->ʼʼ:I

    if-le v1, v13, :cond_25

    const/4 v8, 0x1

    invoke-virtual {v2, v1, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_25
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    iget-object v0, v0, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->ʼˎ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    iget-object v0, v0, Lᵔᵢ/ﾞᴵ;->ﹳᐧ:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->ʼˎ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onStop()V
    .locals 2

    .prologue
    invoke-super {p0}, Lʽ/ﾞʻ;->onStop()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    check-cast v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v0, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lᵔᵢ/ᵎⁱ;->ᵢˏ:Z

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ʼˎ(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ˆʾ(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lʽ/ﾞʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lᵔᵢ/ᵔʾ;->ٴﹶ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ﾞʻ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lᵔᵢ/ᵔᵢ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    iput-object p1, v0, Lᵔᵢ/ﾞᴵ;->ˈ:Ljava/lang/CharSequence;

    iget-object v0, v0, Lᵔᵢ/ﾞᴵ;->ʽﹳ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final ʽ()Lᵔᵢ/ᵔʾ;
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˈٴ:Lᵔᵢ/ᵢˏ;

    if-nez v0, :cond_0

    sget-object v0, Lᵔᵢ/ᵔʾ;->ʾˋ:Lʼﾞ/ˈʿ;

    new-instance v0, Lᵔᵢ/ᵢˏ;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Lᵔᵢ/ᵢˏ;-><init>(Landroid/content/Context;Landroid/view/Window;Lᵔᵢ/ٴﹶ;Ljava/lang/Object;)V

    iput-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˈٴ:Lᵔᵢ/ᵢˏ;

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵔᵢ;->ˈٴ:Lᵔᵢ/ᵢˏ;

    return-object v0
.end method

.method public final ˈ(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0}, Lᵔᵢ/ᵔʾ;->ﹳٴ()V

    invoke-super {p0, p1}, Lʽ/ﾞʻ;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    invoke-virtual {p1}, Lᵔᵢ/ᵔʾ;->ˑﹳ()V

    return-void
.end method

.method public final ᵎﹶ(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lᵔᵢ/ᵔᵢ;->ʽ()Lᵔᵢ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lᵔᵢ/ᵔʾ;->ﾞʻ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ᵔᵢ(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
