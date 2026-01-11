.class public final synthetic Lʼˋ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lʼˋ/ˈ;->ʾˋ:I

    iput-object p2, p0, Lʼˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    iput-boolean p3, p0, Lʼˋ/ˈ;->ᴵˊ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLˋˋ/ʼـ;I)V
    .locals 0

    iput p3, p0, Lʼˋ/ˈ;->ʾˋ:I

    iput-boolean p1, p0, Lʼˋ/ˈ;->ᴵˊ:Z

    iput-object p2, p0, Lʼˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 12

    .prologue
    iget v0, p0, Lʼˋ/ˈ;->ʾˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    iget-boolean v4, p0, Lʼˋ/ˈ;->ᴵˊ:Z

    iget-object v5, p0, Lʼˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Lᵔʻ/ˈـ;

    sget-object v0, Lᵔʻ/ˈـ;->ˎˏ:[Lᐧˆ/ˈ;

    invoke-virtual {v5}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    instance-of v1, v0, Lʼⁱ/ʽ;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lʼⁱ/ʽ;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Lʼⁱ/ʽ;->ﹳᐧ(Z)V

    :cond_1
    return-object v3

    :pswitch_0
    check-cast v5, Lʿי/ـﹶ;

    if-eqz v4, :cond_2

    iget-object v0, v5, Lʿי/ـﹶ;->ﹳـ:Lar/tvplayer/tv/base/ui/view/ProgramTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v3

    :pswitch_1
    check-cast v5, Lʿי/ᴵˑ;

    if-eqz v4, :cond_5

    iget-object v0, v5, Lʿי/ᴵˑ;->ﹳـ:Lˊˈ/ˈ;

    iget-object v0, v0, Lˊˈ/ˈ;->ﾞʻ:Landroid/view/View;

    check-cast v0, Lar/tvplayer/tv/tvguide/ui/ProgramsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    instance-of v4, v0, Lʿי/ﹶᐧ;

    if-eqz v4, :cond_3

    move-object v2, v0

    check-cast v2, Lʿי/ﹶᐧ;

    :cond_3
    if-eqz v2, :cond_5

    iget-object v0, v2, Lʿי/ﹶᐧ;->ˈ:Lar/tvplayer/tv/tvguide/ui/ProgramsRecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lʻـ/ʽ;->setScrollOffset(I)V

    :cond_4
    iget-object v0, v2, Lʿי/ﹶᐧ;->ˑﹳ:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    iput-object v0, v2, Lʿי/ﹶᐧ;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v2}, Lˋˋ/ᴵˑ;->ˈ()V

    :cond_5
    return-object v3

    :pswitch_2
    check-cast v5, Lʼⁱ/ᵎʿ;

    sget-object v0, Lʼⁱ/ᵎʿ;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lʼⁱ/ᵎʿ;->ﹳᵢ:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x5dc

    cmp-long v0, v6, v8

    if-lez v0, :cond_f

    iget-object v0, v5, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    instance-of v6, v0, Lʼⁱ/ⁱˉ;

    if-eqz v6, :cond_6

    check-cast v0, Lʼⁱ/ⁱˉ;

    goto :goto_0

    :cond_6
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_e

    check-cast v0, Lᵔˋ/ˆʾ;

    invoke-virtual {v0}, Lᵔˋ/ˆʾ;->ˑˉ()Lᵔˋ/ᵎˊ;

    move-result-object v0

    iget-object v6, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v6

    iget-object v6, v6, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v6

    instance-of v7, v6, Lᵔˋ/ٴᵢ;

    if-eqz v7, :cond_8

    move-object v2, v6

    check-cast v2, Lᵔˋ/ٴᵢ;

    :cond_8
    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v6

    iget-object v6, v6, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v6}, Landroidx/leanback/widget/ᵔᵢ;->getSelectedPosition()I

    move-result v6

    iget-object v7, v2, Lᵔˋ/ٴᵢ;->ˈ:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x1

    if-nez v4, :cond_b

    move v9, v7

    goto :goto_1

    :cond_b
    move v9, v8

    :goto_1
    add-int/2addr v6, v9

    if-ltz v6, :cond_e

    iget-object v9, v2, Lᵔˋ/ٴᵢ;->ˈ:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v6, v9, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v2, v6}, Lᵔˋ/ٴᵢ;->ᵔʾ(I)Lᵔˋ/ʽʽ;

    move-result-object v9

    if-nez v9, :cond_d

    goto :goto_2

    :cond_d
    iget v10, v9, Lᵔˋ/ʽʽ;->ﹳٴ:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    iget-object v2, v9, Lᵔˋ/ʽʽ;->ⁱˊ:Lˉʾ/ⁱᴵ;

    invoke-virtual {v0, v2, v8}, Lᵔˋ/ᵎˊ;->ـˑ(Lˉʾ/ⁱᴵ;Z)V

    invoke-virtual {v0}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v0

    iget-object v0, v0, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v0, v6}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    :cond_e
    :goto_2
    iget-object v0, v5, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_f

    new-instance v2, Lʼⁱ/ʻᴵ;

    invoke-direct {v2, v5, v5, v1}, Lʼⁱ/ʻᴵ;-><init>(Lˑʼ/ᴵᵔ;Lʼⁱ/ᵎʿ;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-object v3

    :pswitch_3
    check-cast v5, Lʼˋ/ᵎﹶ;

    if-eqz v4, :cond_10

    const-string v0, "reader"

    goto :goto_3

    :cond_10
    const-string v0, "writer"

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Timed out attempting to acquire a "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " connection."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nWriter pool:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    invoke-virtual {v0, v1}, Lʼˋ/ˉˆ;->ˈ(Ljava/lang/StringBuilder;)V

    const-string v0, "Reader pool:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    invoke-virtual {v0, v1}, Lʼˋ/ˉˆ;->ˈ(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    :try_start_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
