.class public final Lⁱʼ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Lʼᵔ/ˑﹳ;


# direct methods
.method public constructor <init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V
    .locals 2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-static {v0, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lⁱʼ/ˉˆ;->ⁱˊ:Ljava/util/List;

    invoke-static {p2, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    return-void
.end method
