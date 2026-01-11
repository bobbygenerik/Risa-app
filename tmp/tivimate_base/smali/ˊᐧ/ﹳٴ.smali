.class public abstract Lˊᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    iget-object v0, v0, Lˊᐧ/ʼˎ;->ʾˋ:[B

    sput-object v0, Lˊᐧ/ﹳٴ;->ﹳٴ:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    return-void
.end method
