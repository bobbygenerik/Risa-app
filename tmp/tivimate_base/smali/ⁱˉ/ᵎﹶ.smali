.class public final Lⁱˉ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱˉ/ﾞᴵ;


# static fields
.field public static final ʽ:Ljava/lang/String;

.field public static final ˈ:Ljava/lang/String;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱˉ/ᵎﹶ;->ʽ:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lⁱˉ/ᵎﹶ;->ˈ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lⁱˉ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lⁱˉ/ᵎﹶ;->ⁱˊ:I

    return-void
.end method
