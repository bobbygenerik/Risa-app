.class public final Landroidx/leanback/widget/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/leanback/widget/ˏᵢ;->ʾˋ:I

    iput-object p3, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    iput p1, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Landroidx/leanback/widget/ˏᵢ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Lˈˊ/ˉˆ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    iput p2, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ʼˎ;

    iget v1, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Lﹳˊ/ʼˎ;->ʼˎ(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉٴ/ⁱˊ;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Lˉٴ/ⁱˊ;->ʼˎ(I)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lـﹶ/ᵔᵢ;

    invoke-virtual {v2}, Lـﹶ/ᵔᵢ;->ﹳٴ()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lـﹶ/ᵔᵢ;

    invoke-virtual {v2}, Lـﹶ/ᵔᵢ;->ⁱˊ()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->ᵎʻ(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/leanback/widget/ˏᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->ˈⁱ:Landroid/util/SparseIntArray;

    iget v2, p0, Landroidx/leanback/widget/ˏᵢ;->ᴵˊ:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v3, v0, Landroidx/leanback/widget/SearchBar;->ﹳـ:Landroid/media/SoundPool;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
