.class public final Lˉˆ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʾˋ:Lˉˆ/ﾞᴵ;

.field public final synthetic ᴵˊ:Lˉˆ/ٴﹶ;


# direct methods
.method public constructor <init>(Lˉˆ/ٴﹶ;Lˉˆ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ᵔᵢ;->ᴵˊ:Lˉˆ/ٴﹶ;

    iput-object p2, p0, Lˉˆ/ᵔᵢ;->ʾˋ:Lˉˆ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ᵔᵢ;->ᴵˊ:Lˉˆ/ٴﹶ;

    iget-object v1, v0, Lˉˆ/ٴﹶ;->ʽʽ:Lᵔʾ/ˆʾ;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lᵔʾ/ˆʾ;->ˑﹳ:Lᵔʾ/ᵔᵢ;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lᵔʾ/ᵔᵢ;->ⁱˊ(Lᵔʾ/ˆʾ;)V

    :cond_0
    iget-object v1, v0, Lˉˆ/ٴﹶ;->ˉٴ:Lᵔʾ/ـˆ;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lˉˆ/ᵔᵢ;->ʾˋ:Lˉˆ/ﾞᴵ;

    invoke-virtual {v1}, Lᵔʾ/יـ;->ⁱˊ()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Lᵔʾ/יـ;->ˈ(IIZZ)V

    :goto_0
    iput-object v1, v0, Lˉˆ/ٴﹶ;->ʼˈ:Lˉˆ/ﾞᴵ;

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lˉˆ/ٴﹶ;->ﹳـ:Lˉˆ/ᵔᵢ;

    return-void
.end method
