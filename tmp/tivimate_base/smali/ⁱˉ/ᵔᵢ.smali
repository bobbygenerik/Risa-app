.class public final Lⁱˉ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱˉ/ﾞᴵ;


# static fields
.field public static final ˈ:Ljava/lang/String;

.field public static final ˑﹳ:Ljava/lang/String;

.field public static final ﾞᴵ:Ljava/lang/String;


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱˉ/ᵔᵢ;->ˈ:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱˉ/ᵔᵢ;->ˑﹳ:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱˉ/ᵔᵢ;->ﾞᴵ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lⁱˉ/ᵔᵢ;->ﹳٴ:I

    iput p2, p0, Lⁱˉ/ᵔᵢ;->ⁱˊ:I

    iput p3, p0, Lⁱˉ/ᵔᵢ;->ʽ:I

    return-void
.end method
