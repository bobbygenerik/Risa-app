.class public final Lʼᴵ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᴵ/ﾞᴵ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Lʼᴵ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lʼᴵ/ﾞᴵ;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᴵ/ʽ;->ﹳٴ:Lʼᴵ/ﾞᴵ;

    iput p2, p0, Lʼᴵ/ʽ;->ⁱˊ:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "count must be non-negative, but was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lʼᴵ/ⁱˊ;

    invoke-direct {v0, p0}, Lʼᴵ/ⁱˊ;-><init>(Lʼᴵ/ʽ;)V

    return-object v0
.end method
