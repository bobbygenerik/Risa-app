.class public final Lcom/bumptech/glide/load/data/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ﾞᴵ;


# instance fields
.field public final ﹳٴ:Lיᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lיᐧ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ˉʿ;->ﹳٴ:Lיᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/ᵎﹶ;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/load/data/ʼˎ;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/ˉʿ;->ﹳٴ:Lיᐧ/ﾞᴵ;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/data/ʼˎ;-><init>(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)V

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
