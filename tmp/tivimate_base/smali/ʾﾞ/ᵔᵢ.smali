.class public interface abstract Lʾﾞ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public abstract reset()V
.end method

.method public abstract ʽ()Z
.end method

.method public abstract ˈ()Ljava/nio/ByteBuffer;
.end method

.method public abstract ˑﹳ()V
.end method

.method public abstract ᵎﹶ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;
.end method

.method public abstract ⁱˊ()Z
.end method

.method public abstract ﾞᴵ(Ljava/nio/ByteBuffer;)V
.end method
