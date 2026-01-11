.class public final Lᐧⁱ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʻٴ:Lᐧⁱ/ʽﹳ;

.field public final ʼʼ:Ljava/util/ArrayList;

.field public final ʼˎ:Landroid/view/ViewGroup;

.field public final ʼᐧ:Landroid/animation/AnimatorSet;

.field public final ʽ:Landroid/view/ViewGroup;

.field public ʽʽ:Z

.field public final ʽﹳ:Lᐧⁱ/ʽﹳ;

.field public ʾˋ:Z

.field public final ʾᵎ:Lᐧⁱ/ᵔᵢ;

.field public final ˆʾ:Landroid/view/View;

.field public final ˈ:Landroid/view/ViewGroup;

.field public final ˉʿ:Landroid/animation/AnimatorSet;

.field public final ˉˆ:Landroid/animation/AnimatorSet;

.field public final ˏי:Lᐧⁱ/ʽﹳ;

.field public final ˑﹳ:Landroid/view/ViewGroup;

.field public final יـ:Lᐧⁱ/ʽﹳ;

.field public final ـˆ:Lᐧⁱ/ʽﹳ;

.field public final ٴﹶ:Landroid/view/View;

.field public ᴵˊ:Z

.field public final ᵎﹶ:Landroid/view/ViewGroup;

.field public final ᵔʾ:Landroid/animation/AnimatorSet;

.field public final ᵔᵢ:Landroid/view/ViewGroup;

.field public final ᵔﹳ:Landroid/animation/ValueAnimator;

.field public ᵢˏ:I

.field public final ⁱˊ:Landroid/view/View;

.field public final ﹳٴ:Lᐧⁱ/ˏי;

.field public final ﹳᐧ:Landroid/animation/ValueAnimator;

.field public final ﾞʻ:Landroid/animation/AnimatorSet;

.field public final ﾞᴵ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lᐧⁱ/ˏי;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    new-instance v2, Lᐧⁱ/ʽﹳ;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->יـ:Lᐧⁱ/ʽﹳ;

    new-instance v2, Lᐧⁱ/ʽﹳ;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ˏי:Lᐧⁱ/ʽﹳ;

    new-instance v2, Lᐧⁱ/ʽﹳ;

    const/4 v5, 0x4

    invoke-direct {v2, v0, v5}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ʽﹳ:Lᐧⁱ/ʽﹳ;

    new-instance v2, Lᐧⁱ/ʽﹳ;

    const/4 v6, 0x5

    invoke-direct {v2, v0, v6}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ʻٴ:Lᐧⁱ/ʽﹳ;

    new-instance v2, Lᐧⁱ/ʽﹳ;

    const/4 v7, 0x6

    invoke-direct {v2, v0, v7}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ـˆ:Lᐧⁱ/ʽﹳ;

    new-instance v2, Lᐧⁱ/ᵔᵢ;

    const/4 v7, 0x1

    invoke-direct {v2, v7, v0}, Lᐧⁱ/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ʾᵎ:Lᐧⁱ/ᵔᵢ;

    iput-boolean v7, v0, Lᐧⁱ/ʼʼ;->ʽʽ:Z

    iput v3, v0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ʼʼ:Ljava/util/ArrayList;

    const v2, 0x7f0b0165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ⁱˊ:Landroid/view/View;

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    const v2, 0x7f0b015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lᐧⁱ/ʼʼ;->ˈ:Landroid/view/ViewGroup;

    const v8, 0x7f0b0189

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lᐧⁱ/ʼʼ;->ʼˎ:Landroid/view/ViewGroup;

    const v8, 0x7f0b017c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lᐧⁱ/ʼʼ;->ˆʾ:Landroid/view/View;

    const v9, 0x7f0b015d

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Lᐧⁱ/ʼʼ;->ﾞᴵ:Landroid/view/ViewGroup;

    const v9, 0x7f0b0168

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Lᐧⁱ/ʼʼ;->ᵎﹶ:Landroid/view/ViewGroup;

    const v9, 0x7f0b0169

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    const v9, 0x7f0b0174

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lᐧⁱ/ʼʼ;->ٴﹶ:Landroid/view/View;

    const v10, 0x7f0b0173

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    new-instance v11, Lcom/google/android/material/datepicker/ˉʿ;

    const/16 v12, 0xe

    invoke-direct {v11, v12, v0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/google/android/material/datepicker/ˉʿ;

    invoke-direct {v9, v12, v0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Lᐧⁱ/ʻٴ;

    invoke-direct {v11, v0, v4}, Lᐧⁱ/ʻٴ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Lᐧⁱ/ـˆ;

    invoke-direct {v11, v0, v3}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v11, v9, [F

    fill-array-data v11, :array_1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Lᐧⁱ/ʻٴ;

    invoke-direct {v12, v0, v3}, Lᐧⁱ/ʻٴ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v12, Lᐧⁱ/ـˆ;

    invoke-direct {v12, v0, v7}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0700b9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    const v15, 0x7f0700be

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v13, v0, Lᐧⁱ/ʼʼ;->ﾞʻ:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0xfa

    invoke-virtual {v13, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Lᐧⁱ/ʾᵎ;

    invoke-direct {v15, v0, v1, v3}, Lᐧⁱ/ʾᵎ;-><init>(Lᐧⁱ/ʼʼ;Lᐧⁱ/ˏי;I)V

    invoke-virtual {v13, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const/4 v13, 0x0

    invoke-static {v8, v13, v14}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-static {v2, v13, v14}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lᐧⁱ/ʼʼ;->ˉʿ:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Lᐧⁱ/ʾᵎ;

    invoke-direct {v15, v0, v1, v7}, Lᐧⁱ/ʾᵎ;-><init>(Lᐧⁱ/ʼʼ;Lᐧⁱ/ˏי;I)V

    invoke-virtual {v3, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v8, v14, v12}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-static {v2, v14, v12}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lᐧⁱ/ʼʼ;->ᵔʾ:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Lᐧⁱ/ʾᵎ;

    invoke-direct {v15, v0, v1, v9}, Lᐧⁱ/ʾᵎ;-><init>(Lᐧⁱ/ʼʼ;Lᐧⁱ/ˏי;I)V

    invoke-virtual {v3, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v13, v12}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v13, v12}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lᐧⁱ/ʼʼ;->ˉˆ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lᐧⁱ/ـˆ;

    invoke-direct {v3, v0, v9}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v14, v13}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v14, v13}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lᐧⁱ/ʼʼ;->ʼᐧ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lᐧⁱ/ـˆ;

    invoke-direct {v3, v0, v4}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v12, v13}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v12, v13}, Lᐧⁱ/ʼʼ;->ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v1, v9, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lᐧⁱ/ʼʼ;->ᵔﹳ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lᐧⁱ/ʻٴ;

    invoke-direct {v2, v0, v7}, Lᐧⁱ/ʻٴ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lᐧⁱ/ـˆ;

    const/4 v15, 0x4

    invoke-direct {v2, v0, v15}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v9, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lᐧⁱ/ʼʼ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lᐧⁱ/ʻٴ;

    invoke-direct {v2, v0, v9}, Lᐧⁱ/ʻٴ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lᐧⁱ/ـˆ;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lᐧⁱ/ـˆ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static ʽ(Landroid/view/View;)I
    .locals 2

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1

    :cond_1
    return v0
.end method

.method public static ˆʾ(Landroid/view/View;)Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0b015e

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b017b

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b0172

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b017f

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b0180

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b016a

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b016b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ˈ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "translationY"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʼˎ(I)V
    .locals 3

    .prologue
    iget v0, p0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    iput p1, p0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    iget-object p1, v1, Lᐧⁱ/ˏי;->ٴʼ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᐧⁱ/יـ;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    check-cast v0, Lᐧⁱ/ᴵˊ;

    iget-object v0, v0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {v0}, Lᐧⁱ/ˊʻ;->ˉˆ()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final ˑﹳ(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final ٴﹶ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᐧⁱ/ʼʼ;->ʽʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    invoke-virtual {p0}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    return-void

    :cond_0
    iget v0, p0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʼᐧ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ˉˆ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    invoke-virtual {p0}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 4

    .prologue
    iget v0, p0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->getShowTimeoutMs()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v1, p0, Lᐧⁱ/ʼʼ;->ʽʽ:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ـˆ:Lᐧⁱ/ʽﹳ;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lᐧⁱ/ʼʼ;->ˑﹳ(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    iget v1, p0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʽﹳ:Lᐧⁱ/ʽﹳ;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lᐧⁱ/ʼʼ;->ˑﹳ(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ʻٴ:Lᐧⁱ/ʽﹳ;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lᐧⁱ/ʼʼ;->ˑﹳ(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ᵔᵢ(Landroid/view/View;Z)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʼʼ:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean p2, p0, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lᐧⁱ/ʼʼ;->ˆʾ(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ⁱˊ(Landroid/view/View;)Z
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʼʼ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(F)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, p1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ʼˎ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    sub-float v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ﾞᴵ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final ﾞᴵ()V
    .locals 2

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ـˆ:Lᐧⁱ/ʽﹳ;

    iget-object v1, p0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ˏי:Lᐧⁱ/ʽﹳ;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʻٴ:Lᐧⁱ/ʽﹳ;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lᐧⁱ/ʼʼ;->ʽﹳ:Lᐧⁱ/ʽﹳ;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
