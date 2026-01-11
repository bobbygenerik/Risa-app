.class public final Lˑʼ/ʼʼ;
.super Lˑʼ/ʽʽ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lˑʼ/ᴵᵔ;


# direct methods
.method public constructor <init>(Lˑʼ/ᴵᵔ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ʼʼ;->ﹳٴ:Lˑʼ/ᴵᵔ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ʼʼ;->ﹳٴ:Lˑʼ/ᴵᵔ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ʼـ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1}, Lـʾ/ᵔﹳ;->ﹳᐧ()V

    invoke-static {v0}, Landroidx/lifecycle/ʼˈ;->ⁱˊ(Lᵎ/ˑﹳ;)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "registryState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ʼـ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0, v1}, Lـʾ/ᵔﹳ;->יـ(Landroid/os/Bundle;)V

    return-void
.end method
