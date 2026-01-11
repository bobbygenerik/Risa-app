.class public final Lﹳﾞ/ˑﹳ;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lﹳﾞ/ˑﹳ;->ʾˋ:I

    iput-object p2, p0, Lﹳﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/Throwable;

    return-object v0
.end method
