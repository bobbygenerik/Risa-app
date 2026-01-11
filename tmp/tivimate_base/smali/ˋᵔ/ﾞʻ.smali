.class public final Lˋᵔ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/view/ViewGroup;

.field public ˈ:Z

.field public ˑﹳ:[I

.field public ⁱˊ:Landroid/view/ViewParent;

.field public ﹳٴ:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final ʽ(III[I[I)Z
    .locals 12

    .prologue
    move v6, p3

    move-object/from16 v7, p5

    iget-boolean v0, p0, Lˋᵔ/ﾞʻ;->ˈ:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p3}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v9, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_a

    aput v8, v7, v8

    aput v8, v7, v9

    return v8

    :cond_2
    :goto_0
    iget-object v2, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v7, v8

    aget v3, v7, v9

    move v10, v0

    move v11, v3

    goto :goto_1

    :cond_3
    move v10, v8

    move v11, v10

    :goto_1
    if-nez p4, :cond_5

    iget-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    :cond_4
    iget-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    move-object v5, v0

    goto :goto_2

    :cond_5
    move-object/from16 v5, p4

    :goto_2
    aput v8, v5, v8

    aput v8, v5, v9

    instance-of v0, v1, Lˋᵔ/ˉʿ;

    if-eqz v0, :cond_6

    check-cast v1, Lˋᵔ/ˉʿ;

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lˋᵔ/ˉʿ;->ʽ(Landroid/view/View;II[II)V

    goto :goto_3

    :cond_6
    if-nez p3, :cond_7

    :try_start_0
    invoke-interface {v1, v2, p1, p2, v5}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewParent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ViewParentCompat"

    nop

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v7, v8

    sub-int/2addr v0, v10

    aput v0, v7, v8

    aget v0, v7, v9

    sub-int/2addr v0, v11

    aput v0, v7, v9

    :cond_8
    aget v0, v5, v8

    if-nez v0, :cond_9

    aget v0, v5, v9

    if-eqz v0, :cond_a

    :cond_9
    move v8, v9

    :cond_a
    :goto_4
    return v8
.end method

.method public final ˈ(IIII[II[I)Z
    .locals 14

    .prologue
    move-object/from16 v1, p5

    move/from16 v8, p6

    iget-boolean v0, p0, Lˋᵔ/ﾞʻ;->ˈ:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v8}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_a

    aput v10, v1, v10

    aput v10, v1, v11

    return v10

    :cond_2
    :goto_0
    iget-object v3, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v1, v10

    aget v4, v1, v11

    move v12, v0

    move v13, v4

    goto :goto_1

    :cond_3
    move v12, v10

    move v13, v12

    :goto_1
    if-nez p7, :cond_5

    iget-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    :cond_4
    iget-object v0, p0, Lˋᵔ/ﾞʻ;->ˑﹳ:[I

    aput v10, v0, v10

    aput v10, v0, v11

    move-object v9, v0

    goto :goto_2

    :cond_5
    move-object/from16 v9, p7

    :goto_2
    instance-of v0, v2, Lˋᵔ/ᵔʾ;

    if-eqz v0, :cond_6

    check-cast v2, Lˋᵔ/ᵔʾ;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v2 .. v9}, Lˋᵔ/ᵔʾ;->ˈ(Landroid/view/View;IIIII[I)V

    goto :goto_3

    :cond_6
    aget v0, v9, v10

    add-int v0, v0, p3

    aput v0, v9, v10

    aget v0, v9, v11

    add-int v0, v0, p4

    aput v0, v9, v11

    instance-of v0, v2, Lˋᵔ/ˉʿ;

    if-eqz v0, :cond_7

    check-cast v2, Lˋᵔ/ˉʿ;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lˋᵔ/ˉʿ;->ˑﹳ(Landroid/view/View;IIIII)V

    goto :goto_3

    :cond_7
    if-nez p6, :cond_8

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "ViewParent "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    nop

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, v1, v10

    sub-int/2addr p1, v12

    aput p1, v1, v10

    aget p1, v1, v11

    sub-int/2addr p1, v13

    aput p1, v1, v11

    :cond_9
    return v11

    :cond_a
    :goto_4
    return v10
.end method

.method public final ˑﹳ(I)Landroid/view/ViewParent;
    .locals 1

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lˋᵔ/ﾞʻ;->ⁱˊ:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, Lˋᵔ/ﾞʻ;->ﹳٴ:Landroid/view/ViewParent;

    return-object p1
.end method

.method public final ᵎﹶ(II)Z
    .locals 11

    .prologue
    invoke-virtual {p0, p2}, Lˋᵔ/ﾞʻ;->ﾞᴵ(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lˋᵔ/ﾞʻ;->ˈ:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    :goto_0
    if-eqz v3, :cond_9

    instance-of v5, v3, Lˋᵔ/ˉʿ;

    const-string v6, "ViewParent "

    const-string v7, "ViewParentCompat"

    if-eqz v5, :cond_1

    move-object v8, v3

    check-cast v8, Lˋᵔ/ˉʿ;

    invoke-interface {v8, v4, v0, p1, p2}, Lˋᵔ/ˉʿ;->ﾞᴵ(Landroid/view/View;Landroid/view/View;II)Z

    move-result v8

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    :try_start_0
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    :cond_2
    move v8, v2

    :goto_1
    if-eqz v8, :cond_7

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lˋᵔ/ﾞʻ;->ⁱˊ:Landroid/view/ViewParent;

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lˋᵔ/ﾞʻ;->ﹳٴ:Landroid/view/ViewParent;

    :goto_2
    if-eqz v5, :cond_5

    check-cast v3, Lˋᵔ/ˉʿ;

    invoke-interface {v3, v4, v0, p1, p2}, Lˋᵔ/ˉʿ;->ﹳٴ(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    :try_start_1
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    :cond_6
    :goto_3
    return v1

    :cond_7
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_8

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    :cond_8
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_9
    return v2
.end method

.method public final ᵔᵢ(I)V
    .locals 4

    .prologue
    invoke-virtual {p0, p1}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lˋᵔ/ˉʿ;

    iget-object v2, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Lˋᵔ/ˉʿ;

    invoke-interface {v0, v2, p1}, Lˋᵔ/ˉʿ;->ⁱˊ(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewParent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    nop

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lˋᵔ/ﾞʻ;->ⁱˊ:Landroid/view/ViewParent;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lˋᵔ/ﾞʻ;->ﹳٴ:Landroid/view/ViewParent;

    :cond_4
    :goto_1
    return-void
.end method

.method public final ⁱˊ(FF)Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋᵔ/ﾞʻ;->ˈ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    :try_start_0
    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "ViewParent "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewParentCompat"

    nop

    :cond_0
    return v1
.end method

.method public final ﹳٴ(FFZ)Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋᵔ/ﾞʻ;->ˈ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lˋᵔ/ﾞʻ;->ʽ:Landroid/view/ViewGroup;

    :try_start_0
    invoke-interface {v0, v2, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not implement interface method onNestedFling"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewParentCompat"

    nop

    :cond_0
    return v1
.end method

.method public final ﾞᴵ(I)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lˋᵔ/ﾞʻ;->ˑﹳ(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
