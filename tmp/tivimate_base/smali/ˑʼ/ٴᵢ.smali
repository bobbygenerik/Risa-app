.class public final Lˑʼ/ٴᵢ;
.super Lʼ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ᴵʼ;
.implements Landroidx/lifecycle/ʽﹳ;
.implements Lᵎ/ˑﹳ;
.implements Lˑʼ/ᐧﾞ;


# instance fields
.field public final ˉٴ:Lᵔᵢ/ˆʾ;

.field public final ٴʼ:Lˑʼ/ʿ;

.field public final ٴᵢ:Lᵔᵢ/ˆʾ;

.field public final synthetic ᵎˊ:Lᵔᵢ/ˆʾ;

.field public final ᵎⁱ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lᵔᵢ/ˆʾ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lˑʼ/ٴᵢ;->ٴᵢ:Lᵔᵢ/ˆʾ;

    iput-object p1, p0, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    iput-object v0, p0, Lˑʼ/ٴᵢ;->ᵎⁱ:Landroid/os/Handler;

    new-instance p1, Lˑʼ/ʿ;

    invoke-direct {p1}, Lˑʼ/ʿ;-><init>()V

    iput-object p1, p0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    return-void
.end method


# virtual methods
.method public final ʼʼ(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0, p1}, Lᵔᵢ/ˆʾ;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v0, v0, Lᵔᵢ/ˆʾ;->ـˏ:Landroidx/lifecycle/ـˆ;

    return-object v0
.end method

.method public final ᵔי()Landroidx/lifecycle/ˏᵢ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0}, Lʽ/ٴﹶ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v0

    return-object v0
.end method

.method public final ᵢˏ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ()Lˑʼ/ᵎˊ;
    .locals 1

    iget-object v0, p0, Lˑʼ/ٴᵢ;->ᵎˊ:Lᵔᵢ/ˆʾ;

    iget-object v0, v0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    return-object v0
.end method
