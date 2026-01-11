.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lﹳˑ/ʽ;)Lﹳˑ/ˑﹳ;
    .locals 3

    new-instance v0, Lٴי/ⁱˊ;

    check-cast p1, Lﹳˑ/ⁱˊ;

    iget-object v1, p1, Lﹳˑ/ⁱˊ;->ﹳٴ:Landroid/content/Context;

    iget-object v2, p1, Lﹳˑ/ⁱˊ;->ⁱˊ:Lﹳᵔ/ﹳٴ;

    iget-object p1, p1, Lﹳˑ/ⁱˊ;->ʽ:Lﹳᵔ/ﹳٴ;

    invoke-direct {v0, v1, v2, p1}, Lٴי/ⁱˊ;-><init>(Landroid/content/Context;Lﹳᵔ/ﹳٴ;Lﹳᵔ/ﹳٴ;)V

    return-object v0
.end method
