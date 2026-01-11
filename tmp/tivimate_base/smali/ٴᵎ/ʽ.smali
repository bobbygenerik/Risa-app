.class public final synthetic Lٴᵎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lٴᵎ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lٴᵎ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lٴᵎ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lٴᵎ/ʽ;->ˈٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lٴᵎ/ʽ;->ʾˋ:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    sget-object v3, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    iget-object v4, p0, Lٴᵎ/ʽ;->ˈٴ:Ljava/lang/Object;

    iget-object v5, p0, Lٴᵎ/ʽ;->ʽʽ:Ljava/lang/Object;

    iget-object v6, p0, Lٴᵎ/ʽ;->ᴵˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v6, Lﾞᵔ/ˉٴ;

    check-cast v5, Lﾞᵔ/ᵢˏ;

    check-cast v4, Ljava/util/List;

    sget-object v0, Lﾞᵔ/ˉٴ;->ˆﹳ:[Lᐧˆ/ˈ;

    iget-object v0, v6, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-object v4, v5, Lﾞᵔ/ᵢˏ;->ˈ:Ljava/util/List;

    invoke-virtual {v5}, Lˋˋ/ᴵˑ;->ˈ()V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ٴﹶ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ٴﹶ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-static {v1, v0, v2}, Lʿˋ/ˋᵔ;->ᵔﹳ(ILandroid/view/View;Z)V

    :cond_0
    return-object v3

    :pswitch_0
    check-cast v6, Lﾞᵔ/ˉٴ;

    check-cast v5, Lﾞᵔ/ˉˆ;

    check-cast v4, Ljava/util/List;

    sget-object v0, Lﾞᵔ/ˉٴ;->ˆﹳ:[Lᐧˆ/ˈ;

    iget-object v0, v6, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v4, v5, Lﾞᵔ/ˉˆ;->ˈ:Ljava/util/List;

    invoke-virtual {v5}, Lˋˋ/ᴵˑ;->ˈ()V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ﾞᴵ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ﾞᴵ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-static {v1, v0, v2}, Lʿˋ/ˋᵔ;->ᵔﹳ(ILandroid/view/View;Z)V

    :cond_1
    return-object v3

    :pswitch_1
    check-cast v6, Lﾞᵔ/ˉٴ;

    check-cast v5, Lﾞᵔ/ٴﹶ;

    check-cast v4, Ljava/util/List;

    sget-object v0, Lﾞᵔ/ˉٴ;->ˆﹳ:[Lᐧˆ/ˈ;

    iget-object v0, v6, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_2

    iput-object v4, v5, Lﾞᵔ/ٴﹶ;->ˈ:Ljava/util/List;

    invoke-virtual {v5}, Lˋˋ/ᴵˑ;->ˈ()V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ʽﹳ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ʽﹳ:Landroidx/leanback/widget/VerticalGridView;

    invoke-static {v1, v0, v2}, Lʿˋ/ˋᵔ;->ᵔﹳ(ILandroid/view/View;Z)V

    :cond_2
    return-object v3

    :pswitch_2
    check-cast v6, Lﾞᵔ/ˉٴ;

    check-cast v5, Lﾞᵔ/ᵔᵢ;

    check-cast v4, Ljava/util/List;

    sget-object v0, Lﾞᵔ/ˉٴ;->ˆﹳ:[Lᐧˆ/ˈ;

    iget-object v0, v6, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_3

    iput-object v4, v5, Lﾞᵔ/ᵔᵢ;->ˈ:Ljava/util/List;

    invoke-virtual {v5}, Lˋˋ/ᴵˑ;->ˈ()V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ˑﹳ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    invoke-virtual {v6}, Lﾞᵔ/ˉٴ;->ᐧˏ()Lʻﹳ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﹳ/ﹳٴ;->ˑﹳ:Landroidx/leanback/widget/HorizontalGridView;

    invoke-static {v1, v0, v2}, Lʿˋ/ˋᵔ;->ᵔﹳ(ILandroid/view/View;Z)V

    :cond_3
    return-object v3

    :pswitch_3
    check-cast v6, Lˊʼ/ᵔﹳ;

    check-cast v5, Landroid/net/ConnectivityManager;

    check-cast v4, Lʾʽ/ʼˎ;

    iget-boolean v0, v6, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v2, "NetworkRequestConstraintController unregister callback"

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_4
    return-object v3

    :pswitch_4
    check-cast v6, Lˎᵢ/ﾞᴵ;

    check-cast v5, Lˎᵢ/ᵔʾ;

    check-cast v4, Lˎᵢ/ﹳٴ;

    iget-object v0, v6, Lˎᵢ/ﾞᴵ;->ⁱˊ:Lˈˊ/ˉˆ;

    invoke-virtual {v5}, Lˎᵢ/ᵔʾ;->ﹳٴ()Ljava/util/List;

    move-result-object v1

    iget-object v2, v4, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lˈˊ/ˉˆ;->ʼˎ(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
