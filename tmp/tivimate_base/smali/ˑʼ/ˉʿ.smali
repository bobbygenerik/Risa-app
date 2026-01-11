.class public final Lˑʼ/ˉʿ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lˑʼ/ˉˆ;

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I

.field public final synthetic ᴵᵔ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lˑʼ/ˉˆ;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˑʼ/ˉʿ;->ᴵˊ:I

    iput-object p1, p0, Lˑʼ/ˉʿ;->ʽʽ:Lˑʼ/ˉˆ;

    iput-object p2, p0, Lˑʼ/ˉʿ;->ᴵᵔ:Landroid/view/ViewGroup;

    iput-object p3, p0, Lˑʼ/ˉʿ;->ˈٴ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lˑʼ/ˉˆ;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˑʼ/ˉʿ;->ᴵˊ:I

    iput-object p1, p0, Lˑʼ/ˉʿ;->ʽʽ:Lˑʼ/ˉˆ;

    iput-object p2, p0, Lˑʼ/ˉʿ;->ˈٴ:Ljava/lang/Object;

    iput-object p3, p0, Lˑʼ/ˉʿ;->ᴵᵔ:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lˑʼ/ˉʿ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˑʼ/ˉʿ;->ʽʽ:Lˑʼ/ˉˆ;

    iget-object v1, v0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    iget-object v2, v0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :cond_1
    if-ge v7, v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lˑʼ/ʼᐧ;

    iget-object v8, v8, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lˑʼ/ʽᵔ;

    iget-boolean v8, v8, Lˑʼ/ʽᵔ;->ᵎﹶ:Z

    if-nez v8, :cond_1

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Completing animating immediately"

    nop

    :cond_2
    new-instance v3, Landroidx/media3/decoder/ffmpeg/ˈ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ʼᐧ;

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ʽᵔ;

    iget-object v1, v1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    new-instance v4, Landroidx/lifecycle/ᵎⁱ;

    const/16 v5, 0x18

    invoke-direct {v4, v5, v0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lˑʼ/ˉʿ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0, v3, v4}, Lˑʼ/ˑʼ;->ʻٴ(Lˑʼ/ᴵᵔ;Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Landroidx/media3/decoder/ffmpeg/ˈ;->ﹳٴ()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Animating to start"

    nop

    :cond_4
    iget-object v1, v0, Lˑʼ/ˉˆ;->ᵔﹳ:Ljava/lang/Object;

    new-instance v3, Lʻʿ/ᵔʾ;

    const/16 v4, 0x15

    iget-object v5, p0, Lˑʼ/ˉʿ;->ᴵᵔ:Landroid/view/ViewGroup;

    invoke-direct {v3, v0, v4, v5}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lˑʼ/ˑʼ;->ˈ(Ljava/lang/Object;Lʻʿ/ᵔʾ;)V

    :goto_1
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˑʼ/ˉʿ;->ʽʽ:Lˑʼ/ˉˆ;

    iget-object v0, v0, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iget-object v1, p0, Lˑʼ/ˉʿ;->ᴵᵔ:Landroid/view/ViewGroup;

    iget-object v2, p0, Lˑʼ/ˉʿ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lˑʼ/ˑʼ;->ˑﹳ(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
