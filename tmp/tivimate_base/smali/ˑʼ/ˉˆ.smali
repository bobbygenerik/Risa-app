.class public final Lˑʼ/ˉˆ;
.super Lˑʼ/ـᵎ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/ArrayList;

.field public final ʼᐧ:Landroidx/media3/decoder/ffmpeg/ˈ;

.field public final ʽ:Ljava/util/ArrayList;

.field public final ˆʾ:Lיـ/ˑﹳ;

.field public final ˈ:Lˑʼ/ʽᵔ;

.field public final ˉʿ:Lיـ/ˑﹳ;

.field public final ˉˆ:Z

.field public final ˑﹳ:Lˑʼ/ʽᵔ;

.field public final ٴﹶ:Ljava/util/ArrayList;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ᵔʾ:Lיـ/ˑﹳ;

.field public final ᵔᵢ:Ljava/util/ArrayList;

.field public ᵔﹳ:Ljava/lang/Object;

.field public ﹳᐧ:Z

.field public final ﾞʻ:Ljava/util/ArrayList;

.field public final ﾞᴵ:Lˑʼ/ˑʼ;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lˑʼ/ʽᵔ;Lˑʼ/ʽᵔ;Lˑʼ/ˑʼ;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Lיـ/ˑﹳ;Ljava/util/ArrayList;Ljava/util/ArrayList;Lיـ/ˑﹳ;Lיـ/ˑﹳ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    iput-object p2, p0, Lˑʼ/ˉˆ;->ˈ:Lˑʼ/ʽᵔ;

    iput-object p3, p0, Lˑʼ/ˉˆ;->ˑﹳ:Lˑʼ/ʽᵔ;

    iput-object p4, p0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iput-object p5, p0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    iput-object p6, p0, Lˑʼ/ˉˆ;->ᵔᵢ:Ljava/util/ArrayList;

    iput-object p7, p0, Lˑʼ/ˉˆ;->ʼˎ:Ljava/util/ArrayList;

    iput-object p8, p0, Lˑʼ/ˉˆ;->ˆʾ:Lיـ/ˑﹳ;

    iput-object p9, p0, Lˑʼ/ˉˆ;->ٴﹶ:Ljava/util/ArrayList;

    iput-object p10, p0, Lˑʼ/ˉˆ;->ﾞʻ:Ljava/util/ArrayList;

    iput-object p11, p0, Lˑʼ/ˉˆ;->ˉʿ:Lיـ/ˑﹳ;

    iput-object p12, p0, Lˑʼ/ˉˆ;->ᵔʾ:Lיـ/ˑﹳ;

    iput-boolean p13, p0, Lˑʼ/ˉˆ;->ˉˆ:Z

    new-instance p1, Landroidx/media3/decoder/ffmpeg/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ˉˆ;->ʼᐧ:Landroidx/media3/decoder/ffmpeg/ˈ;

    return-void
.end method

.method public static ﾞᴵ(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lˋᵔ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Lˑʼ/ˉˆ;->ﾞᴵ(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lᴵⁱ/ﹳٴ;)V
    .locals 13

    .prologue
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lˑʼ/ˊᵔ;->ﹳٴ(ILjava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lˑʼ/ˉˆ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget-object v6, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v2}, Lˋᵔ/ʽʽ;->ٴﹶ(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v5, p0, Lˑʼ/ˉˆ;->ᵔᵢ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, ">>>>> Beginning transition <<<<<"

    const-string v1, "FragmentManager"

    nop

    const-string v0, ">>>>> SharedElementFirstOutViews <<<<<"

    nop

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v7

    :goto_1
    const-string v8, " Name: "

    const-string v9, "View: "

    if-ge v6, v0, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    check-cast v10, Landroid/view/View;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v10}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    goto :goto_1

    :cond_1
    const-string v0, ">>>>> SharedElementLastInViews <<<<<"

    nop

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v7

    :goto_2
    if-ge v6, v0, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    check-cast v10, Landroid/view/View;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v10}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    goto :goto_2

    :cond_2
    invoke-interface/range {p3 .. p3}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v9, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {v8, v2}, Lˋᵔ/ʽʽ;->ٴﹶ(Landroid/view/View;Ljava/lang/String;)V

    iget-object v8, p0, Lˑʼ/ˉˆ;->ˆʾ:Lיـ/ˑﹳ;

    invoke-virtual {v8, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move v10, v7

    :goto_4
    if-ge v10, v0, :cond_5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8, v9}, Lˋᵔ/ʽʽ;->ٴﹶ(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance v1, Lˑʼ/ʻˋ;

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lˑʼ/ʻˋ;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p2, v1}, Lˋᵔ/ᵔﹳ;->ﹳٴ(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-static {v7, p1}, Lˑʼ/ˊᵔ;->ﹳٴ(ILjava/util/ArrayList;)V

    iget-object p1, p0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v0, p0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    invoke-virtual {v0, p1, v5, v3}, Lˑʼ/ˑʼ;->ʾᵎ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final ʽ(Landroid/view/ViewGroup;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, v0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lˑʼ/ˉˆ;->ﹳᐧ:Z

    if-eqz v2, :cond_1

    :cond_0
    move/from16 v16, v5

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lˑʼ/ˉˆ;->ᵔﹳ:Ljava/lang/Object;

    const-string v7, " to "

    iget-object v8, v0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iget-object v9, v0, Lˑʼ/ˉˆ;->ˑﹳ:Lˑʼ/ʽᵔ;

    iget-object v10, v0, Lˑʼ/ˉˆ;->ˈ:Lˑʼ/ʽᵔ;

    if-eqz v2, :cond_2

    invoke-virtual {v8, v2}, Lˑʼ/ˑʼ;->ʽ(Ljava/lang/Object;)V

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ending execution of operations from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    return-void

    :cond_2
    invoke-virtual {v0, v1, v9, v10}, Lˑʼ/ˉˆ;->ᵎﹶ(Landroid/view/ViewGroup;Lˑʼ/ʽᵔ;Lˑʼ/ʽᵔ;)Lʻᵢ/ˑﹳ;

    move-result-object v2

    iget-object v11, v2, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v2, v2, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v4, v13}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v3

    :goto_0
    if-ge v14, v13, :cond_3

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lˑʼ/ʼᐧ;

    iget-object v15, v15, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v15, Lˑʼ/ʽᵔ;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    check-cast v13, Lˑʼ/ʽᵔ;

    iget-object v14, v13, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    new-instance v15, Lˑʼ/ﾞʻ;

    move/from16 v16, v5

    const/4 v5, 0x1

    invoke-direct {v15, v13, v0, v5}, Lˑʼ/ﾞʻ;-><init>(Lˑʼ/ʽᵔ;Lˑʼ/ˉˆ;I)V

    iget-object v5, v0, Lˑʼ/ˉˆ;->ʼᐧ:Landroidx/media3/decoder/ffmpeg/ˈ;

    invoke-virtual {v8, v14, v2, v5, v15}, Lˑʼ/ˑʼ;->ʻٴ(Lˑʼ/ᴵᵔ;Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Ljava/lang/Runnable;)V

    move/from16 v5, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v5

    new-instance v3, Lˑʼ/ˉʿ;

    invoke-direct {v3, v0, v1, v2}, Lˑʼ/ˉʿ;-><init>(Lˑʼ/ˉˆ;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v0, v11, v1, v3}, Lˑʼ/ˉˆ;->ʼˎ(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lᴵⁱ/ﹳٴ;)V

    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completed executing operations from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_5
    return-void

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lˑʼ/ʼᐧ;

    iget-object v8, v7, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lˑʼ/ʽᵔ;

    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lˑʼ/ˉˆ;->ﹳᐧ:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SpecialEffectsController: TransitionSeekController was not created. Completing operation "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    goto :goto_4

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SpecialEffectsController: Container "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has not been laid out. Completing operation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    :cond_7
    :goto_4
    iget-object v7, v7, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v7, Lˑʼ/ʽᵔ;

    invoke-virtual {v7, v0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    goto :goto_3

    :cond_8
    iput-boolean v3, v0, Lˑʼ/ˉˆ;->ﹳᐧ:Z

    return-void
.end method

.method public final ˈ(Lʽ/ⁱˊ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ˉˆ;->ᵔﹳ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iget p1, p1, Lʽ/ⁱˊ;->ʽ:F

    invoke-virtual {v1, v0, p1}, Lˑʼ/ˑʼ;->ﹳᐧ(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public final ˑﹳ(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FragmentManager"

    iget-object v3, p0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lˑʼ/ʼᐧ;

    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˑʼ/ʽᵔ;

    const/4 v5, 0x2

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Container "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has not been laid out. Skipping onStart for operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˑʼ/ˉˆ;->ᵔᵢ()Z

    move-result v0

    iget-object v4, p0, Lˑʼ/ˉˆ;->ˑﹳ:Lˑʼ/ʽᵔ;

    iget-object v5, p0, Lˑʼ/ˉˆ;->ˈ:Lˑʼ/ʽᵔ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lˑʼ/ˉˆ;->ﹳٴ()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring shared elements transition "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " between "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_2
    invoke-virtual {p0}, Lˑʼ/ˉˆ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lˑʼ/ˉˆ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lˊʼ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v4, v5}, Lˑʼ/ˉˆ;->ᵎﹶ(Landroid/view/ViewGroup;Lˑʼ/ʽᵔ;Lˑʼ/ʽᵔ;)Lʻᵢ/ˑﹳ;

    move-result-object v2

    iget-object v4, v2, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v2, v2, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lˑʼ/ʼᐧ;

    iget-object v8, v8, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lˑʼ/ʽᵔ;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    check-cast v6, Lˑʼ/ʽᵔ;

    new-instance v7, Landroidx/lifecycle/ᵎⁱ;

    const/16 v8, 0x16

    invoke-direct {v7, v8, v0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v8, v6, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    new-instance v8, Lˑʼ/ﾞʻ;

    const/4 v9, 0x0

    invoke-direct {v8, v6, p0, v9}, Lˑʼ/ﾞʻ;-><init>(Lˑʼ/ʽᵔ;Lˑʼ/ˉˆ;I)V

    iget-object v6, p0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iget-object v9, p0, Lˑʼ/ˉˆ;->ʼᐧ:Landroidx/media3/decoder/ffmpeg/ˈ;

    invoke-virtual {v6, v2, v9, v7, v8}, Lˑʼ/ˑʼ;->ʽﹳ(Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Landroidx/lifecycle/ᵎⁱ;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lˑʼ/ᵔʾ;

    invoke-direct {v1, p0, p1, v2, v0}, Lˑʼ/ᵔʾ;-><init>(Lˑʼ/ˉˆ;Landroid/view/ViewGroup;Ljava/lang/Object;Lˊʼ/ˏי;)V

    invoke-virtual {p0, v4, p1, v1}, Lˑʼ/ˉˆ;->ʼˎ(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lᴵⁱ/ﹳٴ;)V

    :cond_5
    return-void
.end method

.method public final ᵎﹶ(Landroid/view/ViewGroup;Lˑʼ/ʽᵔ;Lˑʼ/ʽᵔ;)Lʻᵢ/ˑﹳ;
    .locals 31

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v13, v0, Lˑʼ/ˉˆ;->ʼˎ:Ljava/util/ArrayList;

    iget-object v14, v0, Lˑʼ/ˉˆ;->ᵔᵢ:Ljava/util/ArrayList;

    iget-object v15, v0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v8, v0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    if-ge v12, v7, :cond_4

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v16

    check-cast v9, Lˑʼ/ʼᐧ;

    iget-object v9, v9, Lˑʼ/ʼᐧ;->ˈٴ:Ljava/lang/Object;

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v9, v0, Lˑʼ/ˉˆ;->ˆʾ:Lיـ/ˑﹳ;

    invoke-virtual {v9}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v15, :cond_3

    iget-object v9, v2, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    move/from16 v20, v7

    iget-object v7, v3, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    sget-object v16, Lˑʼ/ˊᵔ;->ﹳٴ:Lˑʼ/ﹳﹳ;

    move-object/from16 v16, v7

    iget-boolean v7, v0, Lˑʼ/ˉˆ;->ˉˆ:Z

    if-eqz v7, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    new-instance v7, Lcom/parse/ˊﾞ;

    const/4 v9, 0x4

    invoke-direct {v7, v2, v3, v0, v9}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v7}, Lˋᵔ/ᵔﹳ;->ﹳٴ(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v7, v0, Lˑʼ/ˉˆ;->ˉʿ:Lיـ/ˑﹳ;

    invoke-virtual {v7}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, v0, Lˑʼ/ˉˆ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    move/from16 v22, v11

    if-nez v16, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v8, v7, v15}, Lˑʼ/ˑʼ;->יـ(Landroid/view/View;Ljava/lang/Object;)V

    move-object v10, v7

    :cond_1
    iget-object v7, v0, Lˑʼ/ˉˆ;->ᵔʾ:Lיـ/ˑﹳ;

    invoke-virtual {v7}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, v0, Lˑʼ/ˉˆ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_2

    new-instance v9, Lʻʿ/ᵔʾ;

    invoke-direct {v9, v8, v7, v5}, Lʻʿ/ᵔʾ;-><init>(Lˑʼ/ˑʼ;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v9}, Lˋᵔ/ᵔﹳ;->ﹳٴ(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v7, 0x1

    move v11, v7

    goto :goto_2

    :cond_2
    move/from16 v11, v22

    :goto_2
    invoke-virtual {v8, v15, v4, v14}, Lˑʼ/ˑʼ;->ـˆ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v14, v0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    move-object/from16 v17, v14

    move-object/from16 v18, v13

    move-object v13, v8

    invoke-virtual/range {v13 .. v18}, Lˑʼ/ˑʼ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move/from16 v7, v20

    goto/16 :goto_0

    :cond_3
    move/from16 v20, v7

    move/from16 v22, v11

    move/from16 v7, v20

    move/from16 v11, v22

    goto/16 :goto_0

    :cond_4
    move/from16 v22, v11

    move-object v7, v13

    move-object v13, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v23, v7

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    const-string v7, "FragmentManager"

    if-ge v0, v9, :cond_f

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v0, v0, 0x1

    move/from16 v25, v0

    move-object/from16 v0, v16

    check-cast v0, Lˑʼ/ʼᐧ;

    move-object/from16 v26, v6

    iget-object v6, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lˑʼ/ʽᵔ;

    move/from16 v27, v9

    iget-object v9, v0, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v13, v9}, Lˑʼ/ˑʼ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    move-object/from16 v28, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v15

    iget-object v15, v6, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    move-object/from16 v30, v12

    iget-object v12, v15, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-static {v12, v14}, Lˑʼ/ˉˆ;->ﾞᴵ(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v29, :cond_7

    if-eq v6, v3, :cond_5

    if-ne v6, v2, :cond_7

    :cond_5
    if-ne v6, v3, :cond_6

    invoke-static/range {v28 .. v28}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    invoke-static/range {v23 .. v23}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v13, v4, v9}, Lˑʼ/ˑʼ;->ﹳٴ(Landroid/view/View;Ljava/lang/Object;)V

    move-object v12, v14

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v9, v14}, Lˑʼ/ˑʼ;->ⁱˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v9

    move-object/from16 v17, v9

    move-object/from16 v16, v13

    move-object/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Lˑʼ/ˑʼ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v12, v19

    iget v14, v6, Lˑʼ/ʽᵔ;->ﹳٴ:I

    const/4 v2, 0x3

    if-ne v14, v2, :cond_9

    const/4 v2, 0x0

    iput-boolean v2, v6, Lˑʼ/ʽᵔ;->ʼˎ:Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v15, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v15, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v13, v9, v2, v14}, Lˑʼ/ˑʼ;->ʼᐧ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v2, Landroidx/lifecycle/ᵎⁱ;

    const/16 v14, 0x17

    invoke-direct {v2, v14, v12}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lˋᵔ/ᵔﹳ;->ﹳٴ(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_9
    :goto_5
    iget v2, v6, Lˑʼ/ʽᵔ;->ﹳٴ:I

    const-string v6, "View: "

    const/4 v14, 0x2

    if-ne v2, v14, :cond_b

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v22, :cond_a

    invoke-virtual {v13, v9, v5}, Lˑʼ/ˑʼ;->ˏי(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_a
    invoke-static {v14}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Entering Transition: "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    const-string v2, ">>>>> EnteringViews <<<<<"

    nop

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v2, :cond_c

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/view/View;

    move/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    move/from16 v2, v16

    goto :goto_6

    :cond_b
    invoke-virtual {v13, v10, v9}, Lˑʼ/ˑʼ;->יـ(Landroid/view/View;Ljava/lang/Object;)V

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, "Exiting Transition: "

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    const-string v2, ">>>>> ExitingViews <<<<<"

    nop

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v2, :cond_c

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/view/View;

    move/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    move/from16 v2, v16

    goto :goto_7

    :cond_c
    iget-boolean v0, v0, Lˑʼ/ʼᐧ;->ʽʽ:Z

    if-eqz v0, :cond_d

    invoke-virtual {v13, v11, v9}, Lˑʼ/ˑʼ;->ˉˆ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v2, p2

    move/from16 v0, v25

    move-object/from16 v6, v26

    move/from16 v9, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, v30

    invoke-virtual {v13, v0, v9}, Lˑʼ/ˑʼ;->ˉˆ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v2, p2

    move/from16 v0, v25

    move-object/from16 v6, v26

    move/from16 v9, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    goto/16 :goto_3

    :cond_e
    move-object v0, v12

    move-object/from16 v2, p2

    move/from16 v0, v25

    move-object/from16 v6, v26

    move/from16 v9, v27

    goto/16 :goto_3

    :cond_f
    move-object v0, v12

    move-object v2, v15

    invoke-virtual {v13, v11, v0, v2}, Lˑʼ/ˑʼ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Final merged transition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_10
    new-instance v1, Lʻᵢ/ˑﹳ;

    invoke-direct {v1, v8, v0}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final ᵔᵢ()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ʼᐧ;

    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v4, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v4, v4, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    if-nez v4, :cond_1

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p1, p0, Lˑʼ/ˉˆ;->ʼᐧ:Landroidx/media3/decoder/ffmpeg/ˈ;

    invoke-virtual {p1}, Landroidx/media3/decoder/ffmpeg/ˈ;->ﹳٴ()V

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 8

    .prologue
    iget-object v0, p0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    invoke-virtual {v0}, Lˑʼ/ˑʼ;->ﾞʻ()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lˑʼ/ʼᐧ;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x22

    if-lt v6, v7, :cond_3

    iget-object v5, v5, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5}, Lˑʼ/ˑʼ;->ˉʿ(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lˑʼ/ˉˆ;->ᵎﹶ:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lˑʼ/ˑʼ;->ˉʿ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method
