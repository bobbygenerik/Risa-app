.class public Lorg/apache/commons/lang3/exception/ContextedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lˏᵔ/ﹳٴ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    new-instance v0, Lˏᵔ/ﹳٴ;

    invoke-direct {v0}, Lˏᵔ/ﹳٴ;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/exception/ContextedRuntimeException;->ʾˋ:Lˏᵔ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/exception/ContextedRuntimeException;->ʾˋ:Lˏᵔ/ﹳٴ;

    invoke-virtual {v1, v0}, Lˏᵔ/ﹳٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
