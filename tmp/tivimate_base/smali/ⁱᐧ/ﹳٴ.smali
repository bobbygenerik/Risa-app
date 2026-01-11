.class public final Lⁱᐧ/ﹳٴ;
.super Lˎᵢ/ᴵᵔ;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᴵˊ;


# instance fields
.field public final ʽʽ:J

.field public final ᴵˊ:Lˎᵢ/ﹳᐧ;


# direct methods
.method public constructor <init>(Lˎᵢ/ﹳᐧ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱᐧ/ﹳٴ;->ᴵˊ:Lˎᵢ/ﹳᐧ;

    iput-wide p2, p0, Lⁱᐧ/ﹳٴ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final ʽ()J
    .locals 2

    iget-wide v0, p0, Lⁱᐧ/ﹳٴ;->ʽʽ:J

    return-wide v0
.end method

.method public final ˉˆ()Lˊᐧ/ᵔᵢ;
    .locals 1

    new-instance v0, Lˊᐧ/ـˆ;

    invoke-direct {v0, p0}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    return-object v0
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    sget-object v0, Lˊᐧ/ˈٴ;->ˈ:Lˊᐧ/ʽʽ;

    return-object v0
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ()Lˎᵢ/ﹳᐧ;
    .locals 1

    iget-object v0, p0, Lⁱᐧ/ﹳٴ;->ᴵˊ:Lˎᵢ/ﹳᐧ;

    return-object v0
.end method
