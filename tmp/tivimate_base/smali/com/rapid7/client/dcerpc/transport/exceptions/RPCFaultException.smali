.class public Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final synthetic ʽʽ:I


# instance fields
.field public final ʾˋ:I

.field public final ᴵˊ:Lﾞˉ/ʽ;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput p1, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->ʾˋ:I

    sget-object v0, Lﾞˉ/ʽ;->ʽʽ:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﾞˉ/ʽ;

    if-nez p1, :cond_0

    sget-object p1, Lﾞˉ/ʽ;->ᴵˊ:Lﾞˉ/ʽ;

    :cond_0
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->ᴵˊ:Lﾞˉ/ʽ;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rapid7/client/dcerpc/transport/exceptions/RPCFaultException;->ᴵˊ:Lﾞˉ/ʽ;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Fault: %s (0x%08X)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
