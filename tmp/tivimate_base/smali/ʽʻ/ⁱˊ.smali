.class public final Lʽʻ/ⁱˊ;
.super Lʽʻ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ᴵˊ:Lcom/parse/ˑ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ˑ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    iput-object v0, p0, Lʽʻ/ⁱˊ;->ᴵˊ:Lcom/parse/ˑ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lʽʻ/ⁱˊ;->ᴵˊ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
