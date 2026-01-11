.class public final Lᵔᵢ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ˈˏ;
.implements Lᵔʾ/ˏי;


# instance fields
.field public final synthetic ʾˋ:Lᵔᵢ/ᵢˏ;


# direct methods
.method public synthetic constructor <init>(Lᵔᵢ/ᵢˏ;)V
    .locals 0

    iput-object p1, p0, Lᵔᵢ/ᵔﹳ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 9

    .prologue
    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->ٴﹶ()Lᵔʾ/ˆʾ;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v4, p0, Lᵔᵢ/ᵔﹳ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    iget-object v5, v4, Lᵔᵢ/ᵢˏ;->ˑʼ:[Lᵔᵢ/ʼʼ;

    if-eqz v5, :cond_2

    array-length v6, v5

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-ge v1, v6, :cond_4

    aget-object v7, v5, v1

    if-eqz v7, :cond_3

    iget-object v8, v7, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-ne v8, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    if-eqz v3, :cond_5

    iget p1, v7, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    invoke-virtual {v4, p1, v7, v0}, Lᵔᵢ/ᵢˏ;->ʼᐧ(ILᵔᵢ/ʼʼ;Lᵔʾ/ˆʾ;)V

    invoke-virtual {v4, v7, v2}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    return-void

    :cond_5
    invoke-virtual {v4, v7, p2}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    :cond_6
    return-void
.end method

.method public ˉˆ(Lᵔʾ/ˆʾ;)Z
    .locals 2

    .prologue
    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->ٴﹶ()Lᵔʾ/ˆʾ;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lᵔᵢ/ᵔﹳ;->ʾˋ:Lᵔᵢ/ᵢˏ;

    iget-boolean v1, v0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v0, :cond_0

    const/16 v0, 0x6c

    invoke-interface {v1, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
