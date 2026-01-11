.class public final Landroidx/leanback/widget/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ʼʼ;->ʾˋ:I

    iput-object p2, p0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/leanback/widget/ʼʼ;->ʾˋ:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lᵔᵢ/ﾞᴵ;

    iget-object v3, v2, Lᵔᵢ/ﾞᴵ;->ʼˎ:Landroid/widget/Button;

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lᵔᵢ/ﾞᴵ;->ٴﹶ:Landroid/os/Message;

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lᵔᵢ/ﾞᴵ;->ﾞʻ:Landroid/widget/Button;

    if-ne v1, v3, :cond_1

    iget-object v3, v2, Lᵔᵢ/ﾞᴵ;->ᵔʾ:Landroid/os/Message;

    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lᵔᵢ/ﾞᴵ;->ˉˆ:Landroid/widget/Button;

    if-ne v1, v3, :cond_2

    iget-object v1, v2, Lᵔᵢ/ﾞᴵ;->ᵔﹳ:Landroid/os/Message;

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, v2, Lᵔᵢ/ﾞᴵ;->ˊʻ:Lʻᐧ/ᵔﹳ;

    const/4 v3, 0x1

    iget-object v2, v2, Lᵔᵢ/ﾞᴵ;->ⁱˊ:Lᵔᵢ/ᵔᵢ;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    iget-object v2, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/ui/TrackSelectionView;

    iget-object v3, v2, Landroidx/media3/ui/TrackSelectionView;->ٴᵢ:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/media3/ui/TrackSelectionView;->ʽʽ:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_4

    iput-boolean v5, v2, Landroidx/media3/ui/TrackSelectionView;->ᵔי:Z

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_4
    iget-object v4, v2, Landroidx/media3/ui/TrackSelectionView;->ˈٴ:Landroid/widget/CheckedTextView;

    const/4 v6, 0x0

    if-ne v1, v4, :cond_5

    iput-boolean v6, v2, Landroidx/media3/ui/TrackSelectionView;->ᵔי:Z

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_5
    iput-boolean v6, v2, Landroidx/media3/ui/TrackSelectionView;->ᵔי:Z

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lᐧⁱ/ˑٴ;

    iget-object v7, v4, Lᐧⁱ/ˑٴ;->ﹳٴ:Lʽⁱ/ʿ;

    iget-object v8, v7, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    iget v4, v4, Lᐧⁱ/ˑٴ;->ⁱˊ:I

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʽⁱ/ﹳـ;

    if-nez v9, :cond_7

    iget-boolean v1, v2, Landroidx/media3/ui/TrackSelectionView;->ᵎⁱ:Z

    if-nez v1, :cond_6

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_6
    new-instance v1, Lʽⁱ/ﹳـ;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v4

    invoke-direct {v1, v8, v4}, Lʽⁱ/ﹳـ;-><init>(Lʽⁱ/ـˏ;Ljava/util/List;)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    iget-object v9, v9, Lʽⁱ/ﹳـ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    iget-boolean v9, v2, Landroidx/media3/ui/TrackSelectionView;->ˉٴ:Z

    if-eqz v9, :cond_8

    iget-boolean v7, v7, Lʽⁱ/ʿ;->ʽ:Z

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_1

    :cond_8
    move v7, v6

    :goto_1
    if-nez v7, :cond_a

    iget-boolean v9, v2, Landroidx/media3/ui/TrackSelectionView;->ᵎⁱ:Z

    if-eqz v9, :cond_9

    iget-object v9, v2, Landroidx/media3/ui/TrackSelectionView;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v5, :cond_9

    goto :goto_2

    :cond_9
    move v5, v6

    :cond_a
    :goto_2
    if-eqz v1, :cond_c

    if-eqz v5, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    new-instance v1, Lʽⁱ/ﹳـ;

    invoke-direct {v1, v8, v10}, Lʽⁱ/ﹳـ;-><init>(Lʽⁱ/ـˏ;Ljava/util/List;)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    if-nez v1, :cond_e

    if-eqz v7, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lʽⁱ/ﹳـ;

    invoke-direct {v1, v8, v10}, Lʽⁱ/ﹳـ;-><init>(Lʽⁱ/ـˏ;Ljava/util/List;)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance v1, Lʽⁱ/ﹳـ;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v4

    invoke-direct {v1, v8, v4}, Lʽⁱ/ﹳـ;-><init>(Lʽⁱ/ـˏ;Ljava/util/List;)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_3
    invoke-virtual {v2}, Landroidx/media3/ui/TrackSelectionView;->ﹳٴ()V

    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_4

    :cond_f
    iget-object v1, v1, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    :goto_4
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lᵔʾ/ﾞʻ;->collapseActionView()Z

    :cond_10
    return-void

    :pswitch_2
    iget-object v1, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˉʿ/ﹳٴ;

    invoke-virtual {v1}, Lˉʿ/ﹳٴ;->ﹳٴ()V

    return-void

    :pswitch_3
    iget-object v2, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->ʽﹳ(Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object v1, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/datepicker/ﾞʻ;

    iget v2, v1, Lcom/google/android/material/datepicker/ﾞʻ;->ʿـ:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎʾ(I)V

    goto :goto_5

    :cond_11
    if-ne v2, v3, :cond_12

    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎʾ(I)V

    :cond_12
    :goto_5
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/ﾞʻ;->ˑˆ(Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object v1, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/SearchBar;

    iget-boolean v2, v1, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Landroidx/leanback/widget/SearchBar;->ﾞᴵ()V

    goto :goto_6

    :cond_13
    invoke-virtual {v1}, Landroidx/leanback/widget/SearchBar;->ˑﹳ()V

    :goto_6
    return-void

    :pswitch_6
    iget-object v2, v0, Landroidx/leanback/widget/ʼʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ˊʻ;

    iget-object v3, v2, Landroidx/leanback/widget/ˊʻ;->ٴﹶ:Landroidx/leanback/widget/ᴵᵔ;

    iget-object v4, v2, Landroidx/leanback/widget/ˊʻ;->ˈ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-eqz v5, :cond_1c

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ˈʿ;

    iget-object v5, v1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v6, v1, Landroidx/leanback/widget/ˈʿ;->ᵎᵔ:Landroid/widget/ImageView;

    iget v7, v5, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1b

    const/4 v9, 0x2

    if-ne v7, v9, :cond_14

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v5}, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ()Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v3, :cond_1c

    iget-object v1, v1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-interface {v3, v1}, Landroidx/leanback/widget/ᴵᵔ;->ﹳٴ(Landroidx/leanback/widget/ʾᵎ;)V

    goto/16 :goto_a

    :cond_15
    iget-object v7, v2, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/leanback/widget/ˊʻ;->ﾞʻ:Landroidx/leanback/widget/ˑٴ;

    iget-object v9, v1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget v10, v9, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    iget-boolean v11, v4, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-eqz v11, :cond_19

    if-eqz v10, :cond_19

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eq v10, v11, :cond_17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    move v14, v12

    :goto_7
    if-ge v14, v13, :cond_17

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/leanback/widget/ʾᵎ;

    if-eq v15, v9, :cond_16

    iget v11, v15, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-ne v11, v10, :cond_16

    invoke-virtual {v15}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v15, v12, v8}, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ(II)V

    invoke-virtual {v4, v14, v12}, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ(IZ)Lˋˋ/ʼـ;

    move-result-object v11

    check-cast v11, Landroidx/leanback/widget/ˈʿ;

    if-eqz v11, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Landroidx/leanback/widget/ˈʿ;->ᵎᵔ:Landroid/widget/ImageView;

    instance-of v15, v11, Landroid/widget/Checkable;

    if-eqz v15, :cond_16

    check-cast v11, Landroid/widget/Checkable;

    invoke-interface {v11, v12}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_16
    add-int/lit8 v14, v14, 0x1

    const/4 v11, -0x1

    goto :goto_7

    :cond_17
    invoke-virtual {v9}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v9, v8, v8}, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ(II)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v6, Landroid/widget/Checkable;

    if-eqz v2, :cond_19

    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_8

    :cond_18
    const/4 v4, -0x1

    if-ne v10, v4, :cond_19

    invoke-virtual {v9, v12, v8}, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ(II)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v6, Landroid/widget/Checkable;

    if-eqz v2, :cond_19

    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6, v12}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_19
    :goto_8
    invoke-virtual {v5}, Landroidx/leanback/widget/ʾᵎ;->ˈ()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, v5, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1a

    goto :goto_a

    :cond_1a
    if-eqz v3, :cond_1c

    iget-object v1, v1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-interface {v3, v1}, Landroidx/leanback/widget/ᴵᵔ;->ﹳٴ(Landroidx/leanback/widget/ʾᵎ;)V

    goto :goto_a

    :cond_1b
    :goto_9
    iget-object v3, v2, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ﾞᴵ(Landroidx/leanback/widget/ˊʻ;Landroidx/leanback/widget/ˈʿ;)V

    :cond_1c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
