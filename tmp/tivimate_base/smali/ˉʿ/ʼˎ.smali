.class public final Lˉʿ/ʼˎ;
.super Lˈˋ/ʾˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public ˈ:Z

.field public ˑﹳ:I

.field public final synthetic ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˉʿ/ˆʾ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˉʿ/ʼˎ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˉʿ/ʼˎ;->ˈ:Z

    iput p1, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>(Lˉˆ/ˏⁱ;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˉʿ/ʼˎ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    iput p2, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˉʿ/ʼˎ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget v0, p0, Lˉʿ/ʼˎ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lˉʿ/ʼˎ;->ˈ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget v0, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    iget-object v1, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lˉʿ/ˆʾ;

    iget-object v2, v1, Lˉʿ/ˆʾ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lˉʿ/ˆʾ;->ˈ:Lˋᵔ/ˊˋ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lˋᵔ/ˊˋ;->ʽ()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lˉʿ/ʼˎ;->ˑﹳ:I

    iput-boolean v0, p0, Lˉʿ/ʼˎ;->ˈ:Z

    iput-boolean v0, v1, Lˉʿ/ˆʾ;->ˑﹳ:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lˉʿ/ʼˎ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lˉʿ/ʼˎ;->ˈ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉʿ/ʼˎ;->ˈ:Z

    iget-object v0, p0, Lˉʿ/ʼˎ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lˉʿ/ˆʾ;

    iget-object v0, v0, Lˉʿ/ˆʾ;->ˈ:Lˋᵔ/ˊˋ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lˋᵔ/ˊˋ;->ⁱˊ()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 1

    .prologue
    iget v0, p0, Lˉʿ/ʼˎ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉʿ/ʼˎ;->ˈ:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
