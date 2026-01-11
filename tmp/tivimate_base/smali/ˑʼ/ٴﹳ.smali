.class public final Lˑʼ/ٴﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ʼˎ;
.implements Lᵎ/ˑﹳ;
.implements Landroidx/lifecycle/ᴵʼ;


# instance fields
.field public final ʽʽ:Landroidx/lifecycle/ᵎⁱ;

.field public final ʾˋ:Lˑʼ/ᴵᵔ;

.field public ˈٴ:Landroidx/lifecycle/ـˆ;

.field public final ᴵˊ:Landroidx/lifecycle/ˏᵢ;

.field public ᴵᵔ:Lـʾ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lˑʼ/ᴵᵔ;Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᵎⁱ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    iput-object v0, p0, Lˑʼ/ٴﹳ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iput-object p1, p0, Lˑʼ/ٴﹳ;->ʾˋ:Lˑʼ/ᴵᵔ;

    iput-object p2, p0, Lˑʼ/ٴﹳ;->ᴵˊ:Landroidx/lifecycle/ˏᵢ;

    iput-object p3, p0, Lˑʼ/ٴﹳ;->ʽʽ:Landroidx/lifecycle/ᵎⁱ;

    return-void
.end method


# virtual methods
.method public final ʾˋ()Lʼـ/ˈ;
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ٴﹳ;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lʼـ/ˈ;

    invoke-direct {v2}, Lʼـ/ˈ;-><init>()V

    if-eqz v1, :cond_2

    sget-object v3, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    invoke-virtual {v2, v3, v1}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v2, v1, v0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {v2, v1, p0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ʽ:Lٴﾞ/ˆʾ;

    invoke-virtual {v2, v1, v0}, Lʼـ/ˈ;->ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V

    :cond_3
    return-object v2
.end method

.method public final ˋᵔ()Landroidx/lifecycle/ـˆ;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ٴﹳ;->ⁱˊ()V

    iget-object v0, p0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    return-object v0
.end method

.method public final ᵔי()Landroidx/lifecycle/ˏᵢ;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ٴﹳ;->ⁱˊ()V

    iget-object v0, p0, Lˑʼ/ٴﹳ;->ᴵˊ:Landroidx/lifecycle/ˏᵢ;

    return-object v0
.end method

.method public final ⁱˊ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ـˆ;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ـˆ;-><init>(Landroidx/lifecycle/ʽﹳ;)V

    iput-object v0, p0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    new-instance v0, Lʿʻ/ⁱˊ;

    new-instance v1, Lיˋ/ˈ;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lʿʻ/ⁱˊ;-><init>(Lᵎ/ˑﹳ;Lיˋ/ˈ;)V

    new-instance v1, Lـʾ/ᵔﹳ;

    invoke-direct {v1, v0}, Lـʾ/ᵔﹳ;-><init>(Lʿʻ/ⁱˊ;)V

    iput-object v1, p0, Lˑʼ/ٴﹳ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1}, Lـʾ/ᵔﹳ;->ﹳᐧ()V

    iget-object v0, p0, Lˑʼ/ٴﹳ;->ʽʽ:Landroidx/lifecycle/ᵎⁱ;

    invoke-virtual {v0}, Landroidx/lifecycle/ᵎⁱ;->run()V

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Landroidx/lifecycle/ˉʿ;)V
    .locals 1

    iget-object v0, p0, Lˑʼ/ٴﹳ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    return-void
.end method

.method public final ﾞᴵ()Lˑʼ/ᵎˊ;
    .locals 1

    invoke-virtual {p0}, Lˑʼ/ٴﹳ;->ⁱˊ()V

    iget-object v0, p0, Lˑʼ/ٴﹳ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    return-object v0
.end method
