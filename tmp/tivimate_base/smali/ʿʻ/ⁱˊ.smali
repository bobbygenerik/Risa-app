.class public final Lʿʻ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᵎˉ/ⁱˊ;

.field public final ˈ:Ljava/util/LinkedHashMap;

.field public ˑﹳ:Z

.field public ᵎﹶ:Z

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lיˋ/ˈ;

.field public final ﹳٴ:Lᵎ/ˑﹳ;

.field public ﾞᴵ:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lᵎ/ˑﹳ;Lיˋ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʻ/ⁱˊ;->ﹳٴ:Lᵎ/ˑﹳ;

    iput-object p2, p0, Lʿʻ/ⁱˊ;->ⁱˊ:Lיˋ/ˈ;

    new-instance p1, Lᵎˉ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʻ/ⁱˊ;->ʽ:Lᵎˉ/ⁱˊ;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lʿʻ/ⁱˊ;->ˈ:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʿʻ/ⁱˊ;->ᵔᵢ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʿʻ/ⁱˊ;->ﹳٴ:Lᵎ/ˑﹳ;

    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v2, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lʿʻ/ⁱˊ;->ˑﹳ:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lʿʻ/ⁱˊ;->ⁱˊ:Lיˋ/ˈ;

    invoke-virtual {v1}, Lיˋ/ˈ;->ʽ()Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    new-instance v1, Lʿʻ/ﹳٴ;

    invoke-direct {v1, p0}, Lʿʻ/ﹳٴ;-><init>(Lʿʻ/ⁱˊ;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʻ/ⁱˊ;->ˑﹳ:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
