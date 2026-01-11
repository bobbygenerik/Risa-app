.class public final Lʾʻ/ﹳٴ;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﾞʼ/ﹳٴ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lʾʻ/ﹳٴ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lʾʻ/ﹳٴ;->ʽ:Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput-object v0, p0, Lʾʻ/ﹳٴ;->ﹳٴ:Ljava/net/Proxy;

    const/16 v0, 0x1388

    iput v0, p0, Lʾʻ/ﹳٴ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 2

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lʾʻ/ﹳٴ;->ﹳٴ:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lʾʻ/ﹳٴ;->ﹳٴ(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, p1}, Lʾʻ/ﹳٴ;->ﹳٴ(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lʾʻ/ﹳٴ;->ﹳٴ(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, p1}, Lʾʻ/ﹳٴ;->ﹳٴ(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    .locals 2

    .prologue
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lʾʻ/ﹳٴ;->ﹳٴ:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    sget-object p2, Lʾʻ/ﹳٴ;->ʽ:Lﾞʼ/ﹳٴ;

    const-string v1, "Connecting to {}"

    invoke-interface {p2, p1, v1}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lʾʻ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-object v0
.end method
